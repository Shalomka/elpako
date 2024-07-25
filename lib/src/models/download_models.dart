// As docummented in https://documenter.getpostman.com/view/11918038/T17FATVh#b5edfb9c-6682-4625-974b-c911d95e8ce1

// ignore_for_file: invalid_annotation_target

import 'package:elpako/elpako.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_models.freezed.dart';
part 'download_models.g.dart';

/// Response from the server when downloading a signed document
// {
//   "signature_id": "META-INF/signatures/signatures0.xml#signature_0",
//   "file": {
//     "name": "document.pdf",
//     "content": "...",
//     "digest": "..."
//   },
//   "message": null,
//   "errors": [],
//   "status": "ok",
//   "error_code": null
// }
@freezed
class FileDownloadResponse extends ElpakoResponseBase
    with _$FileDownloadResponse {
  const factory FileDownloadResponse({
    /// Signature ID of the signed document
    @JsonKey(name: 'signature_id') String? signatureId,

    /// File that was signed
    Document? file,

    /// Server message
    String? message,

    /// List of errors that occurred during the signing process
    required List<ElPakoError> errors,

    /// Status of the response (ok, waiting or error) if applicable
    ResponseStatus? status,

    /// Error code if the status is error
    @JsonKey(name: 'error_code') int? errorCode,
  }) = _FileDownloadResponse;

  factory FileDownloadResponse.fromJson(Map<String, dynamic> json) =>
      _$FileDownloadResponseFromJson(json);
}
