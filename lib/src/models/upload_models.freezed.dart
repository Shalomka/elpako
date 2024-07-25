// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileUploadRequest _$FileUploadRequestFromJson(Map<String, dynamic> json) {
  return _FileUploadRequest.fromJson(json);
}

/// @nodoc
mixin _$FileUploadRequest {
  /// Authority that is used to sign the document. Default is mobile ID
  @JsonKey(includeFromJson: false, includeToJson: false)
  SignatureAuthority get authority => throw _privateConstructorUsedError;

  /// message that is displayed to the signer
  String get message => throw _privateConstructorUsedError;

  /// Phone number of the signer, required for mobile ID signing
  String? get phone => throw _privateConstructorUsedError;

  /// Code provided by the signer
  String get code => throw _privateConstructorUsedError;

  /// Type of the document that is signed
  DocumentType get type => throw _privateConstructorUsedError;

  /// Options, if the document is a PDF. Required for PDF documents
  PdfOptions? get pdf => throw _privateConstructorUsedError;

  /// Timestamp the signature
  bool get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileUploadRequestCopyWith<FileUploadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadRequestCopyWith<$Res> {
  factory $FileUploadRequestCopyWith(
          FileUploadRequest value, $Res Function(FileUploadRequest) then) =
      _$FileUploadRequestCopyWithImpl<$Res, FileUploadRequest>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false)
      SignatureAuthority authority,
      String message,
      String? phone,
      String code,
      DocumentType type,
      PdfOptions? pdf,
      bool timestamp});

  $PdfOptionsCopyWith<$Res>? get pdf;
}

/// @nodoc
class _$FileUploadRequestCopyWithImpl<$Res, $Val extends FileUploadRequest>
    implements $FileUploadRequestCopyWith<$Res> {
  _$FileUploadRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authority = null,
    Object? message = null,
    Object? phone = freezed,
    Object? code = null,
    Object? type = null,
    Object? pdf = freezed,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      authority: null == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as SignatureAuthority,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DocumentType,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as PdfOptions?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PdfOptionsCopyWith<$Res>? get pdf {
    if (_value.pdf == null) {
      return null;
    }

    return $PdfOptionsCopyWith<$Res>(_value.pdf!, (value) {
      return _then(_value.copyWith(pdf: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FileUploadRequestImplCopyWith<$Res>
    implements $FileUploadRequestCopyWith<$Res> {
  factory _$$FileUploadRequestImplCopyWith(_$FileUploadRequestImpl value,
          $Res Function(_$FileUploadRequestImpl) then) =
      __$$FileUploadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false)
      SignatureAuthority authority,
      String message,
      String? phone,
      String code,
      DocumentType type,
      PdfOptions? pdf,
      bool timestamp});

  @override
  $PdfOptionsCopyWith<$Res>? get pdf;
}

/// @nodoc
class __$$FileUploadRequestImplCopyWithImpl<$Res>
    extends _$FileUploadRequestCopyWithImpl<$Res, _$FileUploadRequestImpl>
    implements _$$FileUploadRequestImplCopyWith<$Res> {
  __$$FileUploadRequestImplCopyWithImpl(_$FileUploadRequestImpl _value,
      $Res Function(_$FileUploadRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authority = null,
    Object? message = null,
    Object? phone = freezed,
    Object? code = null,
    Object? type = null,
    Object? pdf = freezed,
    Object? timestamp = null,
  }) {
    return _then(_$FileUploadRequestImpl(
      authority: null == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as SignatureAuthority,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DocumentType,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as PdfOptions?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileUploadRequestImpl implements _FileUploadRequest {
  const _$FileUploadRequestImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false)
      this.authority = SignatureAuthority.mobileId,
      required this.message,
      this.phone,
      required this.code,
      this.type = DocumentType.pdf,
      this.pdf,
      this.timestamp = true});

  factory _$FileUploadRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileUploadRequestImplFromJson(json);

  /// Authority that is used to sign the document. Default is mobile ID
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final SignatureAuthority authority;

  /// message that is displayed to the signer
  @override
  final String message;

  /// Phone number of the signer, required for mobile ID signing
  @override
  final String? phone;

  /// Code provided by the signer
  @override
  final String code;

  /// Type of the document that is signed
  @override
  @JsonKey()
  final DocumentType type;

  /// Options, if the document is a PDF. Required for PDF documents
  @override
  final PdfOptions? pdf;

  /// Timestamp the signature
  @override
  @JsonKey()
  final bool timestamp;

  @override
  String toString() {
    return 'FileUploadRequest(authority: $authority, message: $message, phone: $phone, code: $code, type: $type, pdf: $pdf, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUploadRequestImpl &&
            (identical(other.authority, authority) ||
                other.authority == authority) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.pdf, pdf) || other.pdf == pdf) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, authority, message, phone, code, type, pdf, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileUploadRequestImplCopyWith<_$FileUploadRequestImpl> get copyWith =>
      __$$FileUploadRequestImplCopyWithImpl<_$FileUploadRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileUploadRequestImplToJson(
      this,
    );
  }
}

abstract class _FileUploadRequest implements FileUploadRequest {
  const factory _FileUploadRequest(
      {@JsonKey(includeFromJson: false, includeToJson: false)
      final SignatureAuthority authority,
      required final String message,
      final String? phone,
      required final String code,
      final DocumentType type,
      final PdfOptions? pdf,
      final bool timestamp}) = _$FileUploadRequestImpl;

  factory _FileUploadRequest.fromJson(Map<String, dynamic> json) =
      _$FileUploadRequestImpl.fromJson;

  @override

  /// Authority that is used to sign the document. Default is mobile ID
  @JsonKey(includeFromJson: false, includeToJson: false)
  SignatureAuthority get authority;
  @override

  /// message that is displayed to the signer
  String get message;
  @override

  /// Phone number of the signer, required for mobile ID signing
  String? get phone;
  @override

  /// Code provided by the signer
  String get code;
  @override

  /// Type of the document that is signed
  DocumentType get type;
  @override

  /// Options, if the document is a PDF. Required for PDF documents
  PdfOptions? get pdf;
  @override

  /// Timestamp the signature
  bool get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$FileUploadRequestImplCopyWith<_$FileUploadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FileUploadResponse _$FileUploadResponseFromJson(Map<String, dynamic> json) {
  return _FileUploadResponse.fromJson(json);
}

/// @nodoc
mixin _$FileUploadResponse {
  /// Control code that should be displayed to the signer
  @JsonKey(name: 'control_code')
  String get controlCode => throw _privateConstructorUsedError;

  /// Token of the document that was signed
  String get token => throw _privateConstructorUsedError;

  /// Certificate of the signer if available
  String? get certificate => throw _privateConstructorUsedError;

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
  $FileUploadResponseCopyWith<FileUploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadResponseCopyWith<$Res> {
  factory $FileUploadResponseCopyWith(
          FileUploadResponse value, $Res Function(FileUploadResponse) then) =
      _$FileUploadResponseCopyWithImpl<$Res, FileUploadResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'control_code') String controlCode,
      String token,
      String? certificate,
      String? message,
      List<ElPakoError> errors,
      ResponseStatus? status,
      @JsonKey(name: 'error_code') int? errorCode});
}

/// @nodoc
class _$FileUploadResponseCopyWithImpl<$Res, $Val extends FileUploadResponse>
    implements $FileUploadResponseCopyWith<$Res> {
  _$FileUploadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlCode = null,
    Object? token = null,
    Object? certificate = freezed,
    Object? message = freezed,
    Object? errors = null,
    Object? status = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_value.copyWith(
      controlCode: null == controlCode
          ? _value.controlCode
          : controlCode // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      certificate: freezed == certificate
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// @nodoc
abstract class _$$FileUploadResponseImplCopyWith<$Res>
    implements $FileUploadResponseCopyWith<$Res> {
  factory _$$FileUploadResponseImplCopyWith(_$FileUploadResponseImpl value,
          $Res Function(_$FileUploadResponseImpl) then) =
      __$$FileUploadResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'control_code') String controlCode,
      String token,
      String? certificate,
      String? message,
      List<ElPakoError> errors,
      ResponseStatus? status,
      @JsonKey(name: 'error_code') int? errorCode});
}

/// @nodoc
class __$$FileUploadResponseImplCopyWithImpl<$Res>
    extends _$FileUploadResponseCopyWithImpl<$Res, _$FileUploadResponseImpl>
    implements _$$FileUploadResponseImplCopyWith<$Res> {
  __$$FileUploadResponseImplCopyWithImpl(_$FileUploadResponseImpl _value,
      $Res Function(_$FileUploadResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlCode = null,
    Object? token = null,
    Object? certificate = freezed,
    Object? message = freezed,
    Object? errors = null,
    Object? status = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_$FileUploadResponseImpl(
      controlCode: null == controlCode
          ? _value.controlCode
          : controlCode // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      certificate: freezed == certificate
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$FileUploadResponseImpl implements _FileUploadResponse {
  const _$FileUploadResponseImpl(
      {@JsonKey(name: 'control_code') required this.controlCode,
      required this.token,
      this.certificate,
      this.message,
      required final List<ElPakoError> errors,
      this.status,
      @JsonKey(name: 'error_code') this.errorCode})
      : _errors = errors;

  factory _$FileUploadResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileUploadResponseImplFromJson(json);

  /// Control code that should be displayed to the signer
  @override
  @JsonKey(name: 'control_code')
  final String controlCode;

  /// Token of the document that was signed
  @override
  final String token;

  /// Certificate of the signer if available
  @override
  final String? certificate;

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
    return 'FileUploadResponse(controlCode: $controlCode, token: $token, certificate: $certificate, message: $message, errors: $errors, status: $status, errorCode: $errorCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUploadResponseImpl &&
            (identical(other.controlCode, controlCode) ||
                other.controlCode == controlCode) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.certificate, certificate) ||
                other.certificate == certificate) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, controlCode, token, certificate,
      message, const DeepCollectionEquality().hash(_errors), status, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileUploadResponseImplCopyWith<_$FileUploadResponseImpl> get copyWith =>
      __$$FileUploadResponseImplCopyWithImpl<_$FileUploadResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileUploadResponseImplToJson(
      this,
    );
  }
}

abstract class _FileUploadResponse implements FileUploadResponse {
  const factory _FileUploadResponse(
          {@JsonKey(name: 'control_code') required final String controlCode,
          required final String token,
          final String? certificate,
          final String? message,
          required final List<ElPakoError> errors,
          final ResponseStatus? status,
          @JsonKey(name: 'error_code') final int? errorCode}) =
      _$FileUploadResponseImpl;

  factory _FileUploadResponse.fromJson(Map<String, dynamic> json) =
      _$FileUploadResponseImpl.fromJson;

  @override

  /// Control code that should be displayed to the signer
  @JsonKey(name: 'control_code')
  String get controlCode;
  @override

  /// Token of the document that was signed
  String get token;
  @override

  /// Certificate of the signer if available
  String? get certificate;
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
  _$$FileUploadResponseImplCopyWith<_$FileUploadResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PdfOptions _$PdfOptionsFromJson(Map<String, dynamic> json) {
  return _PdfOptions.fromJson(json);
}

/// @nodoc
mixin _$PdfOptions {
  List<Document> get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PdfOptionsCopyWith<PdfOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfOptionsCopyWith<$Res> {
  factory $PdfOptionsCopyWith(
          PdfOptions value, $Res Function(PdfOptions) then) =
      _$PdfOptionsCopyWithImpl<$Res, PdfOptions>;
  @useResult
  $Res call({List<Document> files});
}

/// @nodoc
class _$PdfOptionsCopyWithImpl<$Res, $Val extends PdfOptions>
    implements $PdfOptionsCopyWith<$Res> {
  _$PdfOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_value.copyWith(
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PdfOptionsImplCopyWith<$Res>
    implements $PdfOptionsCopyWith<$Res> {
  factory _$$PdfOptionsImplCopyWith(
          _$PdfOptionsImpl value, $Res Function(_$PdfOptionsImpl) then) =
      __$$PdfOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Document> files});
}

/// @nodoc
class __$$PdfOptionsImplCopyWithImpl<$Res>
    extends _$PdfOptionsCopyWithImpl<$Res, _$PdfOptionsImpl>
    implements _$$PdfOptionsImplCopyWith<$Res> {
  __$$PdfOptionsImplCopyWithImpl(
      _$PdfOptionsImpl _value, $Res Function(_$PdfOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_$PdfOptionsImpl(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PdfOptionsImpl implements _PdfOptions {
  const _$PdfOptionsImpl({required final List<Document> files})
      : _files = files;

  factory _$PdfOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PdfOptionsImplFromJson(json);

  final List<Document> _files;
  @override
  List<Document> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'PdfOptions(files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PdfOptionsImpl &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PdfOptionsImplCopyWith<_$PdfOptionsImpl> get copyWith =>
      __$$PdfOptionsImplCopyWithImpl<_$PdfOptionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PdfOptionsImplToJson(
      this,
    );
  }
}

abstract class _PdfOptions implements PdfOptions {
  const factory _PdfOptions({required final List<Document> files}) =
      _$PdfOptionsImpl;

  factory _PdfOptions.fromJson(Map<String, dynamic> json) =
      _$PdfOptionsImpl.fromJson;

  @override
  List<Document> get files;
  @override
  @JsonKey(ignore: true)
  _$$PdfOptionsImplCopyWith<_$PdfOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
