import 'package:freezed_annotation/freezed_annotation.dart';

part 'elpako_response_base.freezed.dart';
part 'elpako_response_base.g.dart';

/// Status of the requested operation
enum ResponseStatus {
  /// Waiting for the user to sign the document
  waiting,

  /// User has signed the document
  ok,

  /// Error occurred while signing the document
  error,
}

/// Base class for all responses from the elpako server
class ElpakoResponseBase {
  /// Message from the server
  final String? message;

  /// List of errors that occurred while processing the request
  final List<ElPakoError> errors;

  /// Status of the request
  final ResponseStatus? status;

  /// Error code of the request: 200 for success, 400 for bad request, 500 for server error
  final int? errorCode;

  ElpakoResponseBase({
    this.message,
    required this.errors,
    this.status,
    this.errorCode,
  });
}

@freezed
class ElPakoError with _$ElPakoError {
  const factory ElPakoError({
    /// Error message
    required String message,

    /// Error code as in https://documenter.getpostman.com/view/11918038/T17FATVh#klaidu-kodai
    required int code,
  }) = _ElPakoError;

  factory ElPakoError.fromJson(Map<String, dynamic> json) =>
      _$ElPakoErrorFromJson(json);
}
