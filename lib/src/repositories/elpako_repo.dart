import 'dart:convert';
import 'dart:developer';
import 'package:elpako/src/models/download_models.dart';
import 'package:http/http.dart' as http;

import 'package:elpako/elpako.dart';

/// Client for the Epako gateway API
class ElpakoClient {
  final String apiKey;

  late final String _baseUrl;

  /// Constructor for sandbox environment
  ElpakoClient.sandbox({required this.apiKey}) {
    _baseUrl = 'https://api-staging.elpako.lt/api/v1';
  }

  /// Constructor for production environment
  ElpakoClient.production({required this.apiKey}) {
    _baseUrl = 'https://api-staging.elpako.lt/api/v1';
  }

  /// Degfault constructor for sandbox environment is deprecated
  @Deprecated('Use EpakoClient.sandbox or EpakoClient.production')
  ElpakoClient({required this.apiKey}) {
    ElpakoClient.sandbox(apiKey: apiKey);
  }

  ///
  /// Endpoint setup
  ///

  /// Select endpoint based on authority
  String _getEndpointModifierForAuthority(SignatureAuthority authority) {
    switch (authority) {
      case SignatureAuthority.mobileId:
        return 'mobile';
      case SignatureAuthority.smartId:
        return 'smartid';
      default:
        throw ArgumentError('Unsupported authority: $authority');
    }
  }

  /// Document upload endpoint
  String _getUploadAndSignEndpoint(SignatureAuthority authority) {
    return '$_baseUrl/${_getEndpointModifierForAuthority(authority)}/sign.json?access_token=$apiKey';
  }

  /// Status check endpoint
  String _getDownloadEndpoint(SignatureAuthority authority, String token) {
    return '$_baseUrl/${_getEndpointModifierForAuthority(authority)}/sign/status/$token.json?access_token=$apiKey';
  }

  ///
  /// Calls
  ///

  /// Send file to Elpako gateway. The file will be signed using the specified authority (Mobile Id as default).
  Future<FileUploadResponse> uploadAndSign(
    /// Local path to the file to be signed
    String filePath, {
    /// Authority to sign the document (Mobile ID as default)
    SignatureAuthority authority = SignatureAuthority.mobileId,

    /// Type of the document to be signed (PDF as default)
    DocumentType documentType = DocumentType.pdf,

    /// Message to be displayed to the signer
    String message = 'Please sign this document',

    /// Only required for Mobile ID signing
    String? phone,

    /// Personal identification code for signing
    required String code,
  }) async {
    try {
      // Only pdf is supported at the moment, throw an error if other type is selected
      if (documentType != DocumentType.pdf) {
        throw ArgumentError('Only PDF documents are supported at the moment');
      }

      // Check the required arguments
      if (authority == SignatureAuthority.mobileId) {
        assert(phone != null, 'Phone number is required for Mobile ID signing');
      }
      assert(code.isNotEmpty, 'Code is required');

      /// Prepare the request
      final http.MultipartRequest request = await _prepareRequest(
        authority,
        filePath,
        message,
        phone,
        code,
      );

      /// Send the request
      var response = await request.send();
      final responseJson = await response.stream.bytesToString();
      final responseData = jsonDecode(responseJson);
      final result = FileUploadResponse.fromJson(responseData);

      /// On error code returned, throw an exception
      if (result.status == ResponseStatus.error) {
        final responseData = await response.stream.bytesToString();
        log(
          'Failed to send request: ${response.statusCode}, $responseData',
          name: 'ElpakoClient error',
        );
        _logErrorBreakdown(result);
        throw Exception('Failed to send request: ${response.statusCode}');

        /// On success, log the response and return the data
      } else {
        log('Request sent successfully. Try downloading the signed document in ten seconds or so.');
        return result;
      }

      /// Catch any http errors and rethrow
    } on Exception catch (e) {
      log('Error: $e', name: 'ElpakoClient http error');
      rethrow;
    }
  }

  /// Download the signed document from the chosen authority
  Future<FileDownloadResponse> dowloadSignedDocument({
    SignatureAuthority authority = SignatureAuthority.mobileId,
    required String token,
  }) async {
    try {
      // Call endpoint without sending any data

      final url = _getDownloadEndpoint(authority, token);
      log('Generated url: $url');
      var request = http.Request('GET', Uri.parse(url));

      // final request = http.Request('GET', Uri.parse(url));
      // log('Requesting signed document from $url');
      http.StreamedResponse response = await request.send();
      log('Response status: ${response.statusCode}');
      log(response.toString());

      // Parse the response
      final responseJson = await response.stream.bytesToString();
      log('Response: $responseJson');
      final responseData = jsonDecode(responseJson);
      final result = FileDownloadResponse.fromJson(responseData);

      // On error code returned, throw an exception
      if (result.status == ResponseStatus.error) {
        log(
          'Failed to download signed document: ${result.message}',
          name: 'ElpakoClient error',
        );
        _logErrorBreakdown(result);
        throw Exception('Failed to download signed document');
      }

      // othersise log the status of the response and return the data
      log('Document status is: ${result.status}');
      return result;

      // Catch any http errors and rethrow
    } on Exception catch (e) {
      log('Error: $e', name: 'ElpakoClient http error');
      rethrow;
    }
  }

  ///
  /// Helper functions
  ///

  /// Flatten nested objects, returns a map with all the values
  /// ready for the http multipart request
  Map<String, dynamic> _flatten(Map<String, dynamic> map) {
    final result = <String, dynamic>{};
    map.forEach((key, value) {
      if (value is Map<String, dynamic>) {
        final nested = _flatten(value);
        nested.forEach((nestedKey, nestedValue) {
          result['$key$nestedKey'] = nestedValue;
        });
      } else if (value is List) {
        for (var i = 0; i < value.length; i++) {
          final nestedKeys = _flatten(value[i]);
          nestedKeys.forEach((nestedKey, nestedValue) {
            result['[$key][$i][$nestedKey]'] = nestedValue;
          });
        }
      } else {
        result[key] = value;
      }
    });
    return result;
  }

  /// Prepare the request for sending the file
  /// Returns a MultipartRequest object
  Future<http.MultipartRequest> _prepareRequest(
    SignatureAuthority authority,
    String filePath,
    String message,
    String? phone,
    String code,
  ) async {
    // Prepare the request
    final url = _getUploadAndSignEndpoint(authority);
    final file = await Document.fromFile(filePath);
    final pdfOptions = PdfOptions(files: [file]);
    final signRequest = FileUploadRequest(
        authority: authority,
        message: message,
        phone: phone,
        code: code,
        pdf: pdfOptions);

    // Flatten the request data to Map<String, String>
    final data = _flatten(signRequest.toJson());

    // Create multipart request
    var request = http.MultipartRequest('POST', Uri.parse(url));

    // and add the fields
    data.forEach((key, value) {
      request.fields[key] = value.toString();
    });

    return request;
  }
}

/// Log errors from response
void _logErrorBreakdown(ElpakoResponseBase response) {
  if (response.errors.isNotEmpty) {
    // log all errors
    log('Breakdown:');
    for (final error in response.errors) {
      log('Error: ${error.message}', name: 'ElpakoClient error');
    }
  }
}
