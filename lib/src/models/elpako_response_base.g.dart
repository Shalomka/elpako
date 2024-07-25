// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elpako_response_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ElPakoErrorImpl _$$ElPakoErrorImplFromJson(Map<String, dynamic> json) =>
    _$ElPakoErrorImpl(
      message: json['message'] as String,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$$ElPakoErrorImplToJson(_$ElPakoErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
    };
