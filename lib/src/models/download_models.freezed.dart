// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileDownloadResponse _$FileDownloadResponseFromJson(Map<String, dynamic> json) {
  return _FileDownloadResponse.fromJson(json);
}

/// @nodoc
mixin _$FileDownloadResponse {
  /// Signature ID of the signed document
  @JsonKey(name: 'signature_id')
  String? get signatureId => throw _privateConstructorUsedError;

  /// File that was signed
  Document? get file => throw _privateConstructorUsedError;

  /// Server message
  String? get message => throw _privateConstructorUsedError;

  /// List of errors that occurred during the signing process
  List<ElPakoError> get errors => throw _privateConstructorUsedError;

  /// Status of the response (ok, waiting or error) if applicable
  ResponseStatus? get status => throw _privateConstructorUsedError;

  /// Error code if the status is error
  @JsonKey(name: 'error_code')
  int? get errorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileDownloadResponseCopyWith<FileDownloadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileDownloadResponseCopyWith<$Res> {
  factory $FileDownloadResponseCopyWith(FileDownloadResponse value,
          $Res Function(FileDownloadResponse) then) =
      _$FileDownloadResponseCopyWithImpl<$Res, FileDownloadResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'signature_id') String? signatureId,
      Document? file,
      String? message,
      List<ElPakoError> errors,
      ResponseStatus? status,
      @JsonKey(name: 'error_code') int? errorCode});

  $DocumentCopyWith<$Res>? get file;
}

/// @nodoc
class _$FileDownloadResponseCopyWithImpl<$Res,
        $Val extends FileDownloadResponse>
    implements $FileDownloadResponseCopyWith<$Res> {
  _$FileDownloadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signatureId = freezed,
    Object? file = freezed,
    Object? message = freezed,
    Object? errors = null,
    Object? status = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_value.copyWith(
      signatureId: freezed == signatureId
          ? _value.signatureId
          : signatureId // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as Document?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ElPakoError>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResponseStatus?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $DocumentCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FileDownloadResponseImplCopyWith<$Res>
    implements $FileDownloadResponseCopyWith<$Res> {
  factory _$$FileDownloadResponseImplCopyWith(_$FileDownloadResponseImpl value,
          $Res Function(_$FileDownloadResponseImpl) then) =
      __$$FileDownloadResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'signature_id') String? signatureId,
      Document? file,
      String? message,
      List<ElPakoError> errors,
      ResponseStatus? status,
      @JsonKey(name: 'error_code') int? errorCode});

  @override
  $DocumentCopyWith<$Res>? get file;
}

/// @nodoc
class __$$FileDownloadResponseImplCopyWithImpl<$Res>
    extends _$FileDownloadResponseCopyWithImpl<$Res, _$FileDownloadResponseImpl>
    implements _$$FileDownloadResponseImplCopyWith<$Res> {
  __$$FileDownloadResponseImplCopyWithImpl(_$FileDownloadResponseImpl _value,
      $Res Function(_$FileDownloadResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signatureId = freezed,
    Object? file = freezed,
    Object? message = freezed,
    Object? errors = null,
    Object? status = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_$FileDownloadResponseImpl(
      signatureId: freezed == signatureId
          ? _value.signatureId
          : signatureId // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as Document?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ElPakoError>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResponseStatus?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileDownloadResponseImpl implements _FileDownloadResponse {
  const _$FileDownloadResponseImpl(
      {@JsonKey(name: 'signature_id') this.signatureId,
      this.file,
      this.message,
      required final List<ElPakoError> errors,
      this.status,
      @JsonKey(name: 'error_code') this.errorCode})
      : _errors = errors;

  factory _$FileDownloadResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileDownloadResponseImplFromJson(json);

  /// Signature ID of the signed document
  @override
  @JsonKey(name: 'signature_id')
  final String? signatureId;

  /// File that was signed
  @override
  final Document? file;

  /// Server message
  @override
  final String? message;

  /// List of errors that occurred during the signing process
  final List<ElPakoError> _errors;

  /// List of errors that occurred during the signing process
  @override
  List<ElPakoError> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  /// Status of the response (ok, waiting or error) if applicable
  @override
  final ResponseStatus? status;

  /// Error code if the status is error
  @override
  @JsonKey(name: 'error_code')
  final int? errorCode;

  @override
  String toString() {
    return 'FileDownloadResponse(signatureId: $signatureId, file: $file, message: $message, errors: $errors, status: $status, errorCode: $errorCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileDownloadResponseImpl &&
            (identical(other.signatureId, signatureId) ||
                other.signatureId == signatureId) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, signatureId, file, message,
      const DeepCollectionEquality().hash(_errors), status, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileDownloadResponseImplCopyWith<_$FileDownloadResponseImpl>
      get copyWith =>
          __$$FileDownloadResponseImplCopyWithImpl<_$FileDownloadResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileDownloadResponseImplToJson(
      this,
    );
  }
}

abstract class _FileDownloadResponse implements FileDownloadResponse {
  const factory _FileDownloadResponse(
          {@JsonKey(name: 'signature_id') final String? signatureId,
          final Document? file,
          final String? message,
          required final List<ElPakoError> errors,
          final ResponseStatus? status,
          @JsonKey(name: 'error_code') final int? errorCode}) =
      _$FileDownloadResponseImpl;

  factory _FileDownloadResponse.fromJson(Map<String, dynamic> json) =
      _$FileDownloadResponseImpl.fromJson;

  @override

  /// Signature ID of the signed document
  @JsonKey(name: 'signature_id')
  String? get signatureId;
  @override

  /// File that was signed
  Document? get file;
  @override

  /// Server message
  String? get message;
  @override

  /// List of errors that occurred during the signing process
  List<ElPakoError> get errors;
  @override

  /// Status of the response (ok, waiting or error) if applicable
  ResponseStatus? get status;
  @override

  /// Error code if the status is error
  @JsonKey(name: 'error_code')
  int? get errorCode;
  @override
  @JsonKey(ignore: true)
  _$$FileDownloadResponseImplCopyWith<_$FileDownloadResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
