import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:elpako/src/data/models/file_upload_models.dart';
import 'package:elpako/src/data/models/mobile_certificate.dart';
import 'package:elpako/src/data/models/signer_models.dart';
import 'package:elpako/src/elpako_error_enum.dart';

class MobileCertificates {
  /// API key for the Elpako API
  final String apiKey;

  /// Base URL for the Elpako API, based on the environment
  late final String _baseUrl;

  /// Dio client for making API requests
  final Dio _dio;

  MobileCertificates({required this.apiKey, required Dio dio}) : _dio = dio {
    _baseUrl = 'https://api-staging.elpako.lt/api/v1/mobile';
    init();
  }

  MobileCertificates.sandbox({required this.apiKey, required Dio dio})
      : _dio = dio {
    _baseUrl = 'https://api-staging.elpako.lt/api/v1/mobile';
    init();
  }

  init() {
    // Set the headers for the API requests
    final headers = {
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    };

    // Configure the Dio client
    _dio.options.baseUrl = _baseUrl;
    _dio.options.headers = headers;
  }

  /// Get certificate data for a given [code] and [phone]. Returns a [MobileCertificate] object.
  // curl --location 'https://api-staging.elpako.lt/api/v1/mobile/certificate.json' \
  //--form 'phone="+37069298114"' \
  //--form 'code="39004201234"'
  Future<MobileCertificate> getCertificate(String code, String phone) async {
    try {
      // get certificate data
      final response = await _dio.post(
        '/certificate.json',
        data: {
          'phone': phone,
          'code': code,
        },
      );
      final data = MobileCertificate.fromJson(response.data);

      // check for errors
      if (data.errorCode != null) {
        log('Error code: ${data.errorCode}');
        throw ElpakoError.fromCode(data.errorCode!);
      }

      // if no errors, return the data
      return data;
    } on Exception catch (e) {
      // return an unknown error if an exception is thrown
      log('Exception: $e');
      throw ElpakoError.unknownError;
    }
  }

  /// Upload file to the Elpako API. Returns a [UploadedFile] object.
  // curl --location 'https://api-staging.elpako.lt/api/v1/file/upload.json' \
// --form 'file[name]="someAdocFileName.adoc"' \
// --form 'file[content]="UEsDBBQAAAgIAJdx4"' \
// --form 'file[digest]="b83ec5e7ce0a6214f6d95862066730ce2813aed0"'
  Future<UploadedFile> uploadFile(String filePath) async {
    try {
      // create file upload request
      final file = await FileUploadRequest.fromFile(filePath);

      // upload file
      final response = await _dio.post(
        '/file/upload.json',
        data: await file.toJson(),
      );
      final data = UploadedFile.fromJson(response.data);

      // check for errors
      if (data.errorCode != null) {
        log('Error code: ${data.errorCode}');
        throw ElpakoError.fromCode(data.errorCode!);
      }

      // if no errors, return the data
      return data;
    } on Exception catch (e) {
      // return an unknown error if an exception is thrown
      log('Exception: $e');
      throw ElpakoError.unknownError;
    }
  }

  /// Create a signing request for the Elpako API. Returns a [SignRequest] object.
  // curl --location 'https://api-staging.elpako.lt/api/v1/signing/create.json' \
// --form 'type="pdf"' \
// --form 'name="Apple and Google partner on COVID-19 contact tracing technology"' \
// --form 'files[0][token]="{{GwSignExampleFileToken}}"' \
// --form 'signers[0][id]="1"' \
// --form 'signers[0][name]="Vardenis"' \
// --form 'signers[0][surname]="Pavardenis"' \
// --form 'signers[0][message]="MobileMessage1"' \
// --form 'signers[0][pdf][level]="pades-t"' \
// --form 'signers[0][pdf][contact]="Vardenis Pavardenis"' \
// --form 'signers[0][pdf][reason]="Tekstas vizualiame paraše"' \
// --form 'signers[0][pdf][signing_purpose]="signature"' \
// --form 'signers[0][pdf][location]="-"' \
// --form 'signers[0][pdf][annotation][visual_style]="image"' \
// --form 'signers[0][pdf][annotation][placement]="topright"' \
// --form 'signers[0][signing_options][0]="mobile"' \
// --form 'signers[0][signing_options][1]="stationary"' \
// --form 'signers[0][signing_options][2]="advanced"' \
// --form 'signers[0][signing_options][3]="smartid"'

  Future<UploadedFile> createSignRequest(
    FileFormat type,
    String name,
    UploadedFile file,
    List<Signer> signers,
  ) async {
    try {
      // create sign request
      final request = SignRequest(
        type: type,
        name: name,
        file: file,
        signers: signers,
      );

      // send sign request
      final response = await _dio.post(
        '/signing/create.json',
        data: request.toJson(),
      );
      final data = UploadedFile.fromJson(response.data);

      // check for errors
      if (data.errorCode != null) {
        log('Error code: ${data.errorCode}');
        throw ElpakoError.fromCode(data.errorCode!);
      }

      // if no errors, return the data
      return data;
    } on Exception catch (e) {
      // return an unknown error if an exception is thrown
      log('Exception: $e');
      throw ElpakoError.unknownError;
    }
  }

  // Check the status of a signing request
//   var request = http.Request('GET', Uri.parse('https://api-staging.elpako.lt/api/v1/signing/{{GwSignExampleSigningToken}}/status.json'));
// http.StreamedResponse response = await request.send();
// if (response.statusCode == 200) {
//   print(await response.stream.bytesToString());
// }
// else {
//   print(response.reasonPhrase);
// }
// Response:
// {
//   "status": "pending",
//   "signers": {
//     "1": [
//       {
//         "status": "pending",
//         "signing_time": null
//       }
//     ]
//   },
//   "file": null,
//   "file_digest": null,
//   "valid_to": null,
//   "structure": null
// }

  Future<Map<String, dynamic>> getSignRequestStatus(String token) async {
    try {
      // get sign request status
      final response = await _dio.get(
        '/signing/$token/status.json',
      );
      final data = response.data;

      // check for errors
      if (data['errorCode'] != null) {
        log('Error code: ${data['errorCode']}');
        throw ElpakoError.fromCode(data['errorCode']);
      }

      // if no errors, return the data
      return data;
    } on Exception catch (e) {
      // return an unknown error if an exception is thrown
      log('Exception: $e');
      throw ElpakoError.unknownError;
    }
  }
}
