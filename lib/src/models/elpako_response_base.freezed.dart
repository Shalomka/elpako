// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'elpako_response_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ElPakoError _$ElPakoErrorFromJson(Map<String, dynamic> json) {
  return _ElPakoError.fromJson(json);
}

/// @nodoc
mixin _$ElPakoError {
  /// Error message
  String get message => throw _privateConstructorUsedError;

  /// Error code as in https://documenter.getpostman.com/view/11918038/T17FATVh#klaidu-kodai
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElPakoErrorCopyWith<ElPakoError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElPakoErrorCopyWith<$Res> {
  factory $ElPakoErrorCopyWith(
          ElPakoError value, $Res Function(ElPakoError) then) =
      _$ElPakoErrorCopyWithImpl<$Res, ElPakoError>;
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class _$ElPakoErrorCopyWithImpl<$Res, $Val extends ElPakoError>
    implements $ElPakoErrorCopyWith<$Res> {
  _$ElPakoErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElPakoErrorImplCopyWith<$Res>
    implements $ElPakoErrorCopyWith<$Res> {
  factory _$$ElPakoErrorImplCopyWith(
          _$ElPakoErrorImpl value, $Res Function(_$ElPakoErrorImpl) then) =
      __$$ElPakoErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$ElPakoErrorImplCopyWithImpl<$Res>
    extends _$ElPakoErrorCopyWithImpl<$Res, _$ElPakoErrorImpl>
    implements _$$ElPakoErrorImplCopyWith<$Res> {
  __$$ElPakoErrorImplCopyWithImpl(
      _$ElPakoErrorImpl _value, $Res Function(_$ElPakoErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$ElPakoErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElPakoErrorImpl implements _ElPakoError {
  const _$ElPakoErrorImpl({required this.message, required this.code});

  factory _$ElPakoErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElPakoErrorImplFromJson(json);

  /// Error message
  @override
  final String message;

  /// Error code as in https://documenter.getpostman.com/view/11918038/T17FATVh#klaidu-kodai
  @override
  final int code;

  @override
  String toString() {
    return 'ElPakoError(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElPakoErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElPakoErrorImplCopyWith<_$ElPakoErrorImpl> get copyWith =>
      __$$ElPakoErrorImplCopyWithImpl<_$ElPakoErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElPakoErrorImplToJson(
      this,
    );
  }
}

abstract class _ElPakoError implements ElPakoError {
  const factory _ElPakoError(
      {required final String message,
      required final int code}) = _$ElPakoErrorImpl;

  factory _ElPakoError.fromJson(Map<String, dynamic> json) =
      _$ElPakoErrorImpl.fromJson;

  @override

  /// Error message
  String get message;
  @override

  /// Error code as in https://documenter.getpostman.com/view/11918038/T17FATVh#klaidu-kodai
  int get code;
  @override
  @JsonKey(ignore: true)
  _$$ElPakoErrorImplCopyWith<_$ElPakoErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
