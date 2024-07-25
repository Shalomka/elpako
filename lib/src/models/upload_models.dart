// ignore_for_file: invalid_annotation_target

import 'package:elpako/elpako.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_models.freezed.dart';
part 'upload_models.g.dart';

/// Request to upload a document to be signed
@freezed
class FileUploadRequest with _$FileUploadRequest {
  const factory FileUploadRequest({
    /// Authority that is used to sign the document. Default is mobile ID
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(SignatureAuthority.mobileId)
    SignatureAuthority authority,

    /// message that is displayed to the signer
    required String message,

    /// Phone number of the signer, required for mobile ID signing
    String? phone,

    /// Code provided by the signer
    required String code,

    /// Type of the document that is signed
    @Default(DocumentType.pdf) DocumentType type,

    /// Options, if the document is a PDF. Required for PDF documents
    PdfOptions? pdf,

    /// Timestamp the signature
    @Default(true) bool timestamp,
  }) = _FileUploadRequest;

  factory FileUploadRequest.fromJson(Map<String, dynamic> json) =>
      _$FileUploadRequestFromJson(json);
}

/// Response from the server when uploading a document to be signed
// Example response:
// {"control_code":"1234",
// "token":"pdf_bdc6838077cb4a03bacc8b4e52e5658a",
// "certificate":null,
// "message":null,
// "errors":[],
// "status":"ok",
// "error_code":null}
@freezed
class FileUploadResponse extends ElpakoResponseBase with _$FileUploadResponse {
  const factory FileUploadResponse({
    /// Control code that should be displayed to the signer
    @JsonKey(name: 'control_code') required String controlCode,

    /// Token of the document that was signed
    required String token,

    /// Certificate of the signer if available
    String? certificate,

    /// Server message
    String? message,

    /// List of errors that occurred during the signing process
    required List<ElPakoError> errors,

    /// Status of the response (ok, waiting or error) if applicable
    ResponseStatus? status,

    /// Error code if the status is error
    @JsonKey(name: 'error_code') int? errorCode,
  }) = _FileUploadResponse;

  factory FileUploadResponse.fromJson(Map<String, dynamic> json) =>
      _$FileUploadResponseFromJson(json);
}

@freezed
class PdfOptions with _$PdfOptions {
  const factory PdfOptions({
    required List<Document> files,
  }) = _PdfOptions;

  factory PdfOptions.fromJson(Map<String, dynamic> json) =>
      _$PdfOptionsFromJson(json);
}
