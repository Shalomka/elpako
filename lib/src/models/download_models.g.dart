// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileDownloadResponseImpl _$$FileDownloadResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FileDownloadResponseImpl(
      signatureId: json['signature_id'] as String?,
      file: json['file'] == null
          ? null
          : Document.fromJson(json['file'] as Map<String, dynamic>),
      message: json['message'] as String?,
      errors: (json['errors'] as List<dynamic>)
          .map((e) => ElPakoError.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecodeNullable(_$ResponseStatusEnumMap, json['status']),
      errorCode: (json['error_code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FileDownloadResponseImplToJson(
        _$FileDownloadResponseImpl instance) =>
    <String, dynamic>{
      'signature_id': instance.signatureId,
      'file': instance.file,
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
