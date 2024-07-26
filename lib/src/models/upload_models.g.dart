// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileUploadRequestImpl _$$FileUploadRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FileUploadRequestImpl(
      message: json['message'] as String,
      phone: json['phone'] as String?,
      code: json['code'] as String,
      type: $enumDecodeNullable(_$DocumentTypeEnumMap, json['type']) ??
          DocumentType.pdf,
      pdf: json['pdf'] == null
          ? null
          : PdfOptions.fromJson(json['pdf'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as bool? ?? true,
    );

Map<String, dynamic> _$$FileUploadRequestImplToJson(
        _$FileUploadRequestImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'phone': instance.phone,
      'code': instance.code,
      'type': _$DocumentTypeEnumMap[instance.type]!,
      'pdf': instance.pdf,
      'timestamp': instance.timestamp,
    };

const _$DocumentTypeEnumMap = {
  DocumentType.pdf: 'pdf',
  DocumentType.adoc: 'adoc',
};

_$FileUploadResponseImpl _$$FileUploadResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FileUploadResponseImpl(
      controlCode: json['control_code'] as String,
      token: json['token'] as String,
      message: json['message'] as String?,
      errors: (json['errors'] as List<dynamic>)
          .map((e) => ElPakoError.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecodeNullable(_$ResponseStatusEnumMap, json['status']),
      errorCode: (json['error_code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FileUploadResponseImplToJson(
        _$FileUploadResponseImpl instance) =>
    <String, dynamic>{
      'control_code': instance.controlCode,
      'token': instance.token,
      'message': instance.message,
      'errors': instance.errors,
      'status': _$ResponseStatusEnumMap[instance.status],
      'error_code': instance.errorCode,
    };

const _$ResponseStatusEnumMap = {
  ResponseStatus.waiting: 'waiting',
  ResponseStatus.ok: 'ok',
  ResponseStatus.error: 'error',
};

_$PdfOptionsImpl _$$PdfOptionsImplFromJson(Map<String, dynamic> json) =>
    _$PdfOptionsImpl(
      files: (json['files'] as List<dynamic>)
          .map((e) => Document.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PdfOptionsImplToJson(_$PdfOptionsImpl instance) =>
    <String, dynamic>{
      'files': instance.files,
    };
