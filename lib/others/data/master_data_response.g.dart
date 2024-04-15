// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MasterDataResponse _$MasterDataResponseFromJson(Map<String, dynamic> json) =>
    MasterDataResponse(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : MasterDataContent.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MasterDataResponseToJson(MasterDataResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta?.toJson(),
      'data': instance.data?.toJson(),
    };

MasterDataContent _$MasterDataContentFromJson(Map<String, dynamic> json) =>
    MasterDataContent(
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => MasterDataItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MasterDataContentToJson(MasterDataContent instance) =>
    <String, dynamic>{
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };

MasterDataItem _$MasterDataItemFromJson(Map<String, dynamic> json) =>
    MasterDataItem(
      oid: json['oid'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$MasterDataItemToJson(MasterDataItem instance) =>
    <String, dynamic>{
      'oid': instance.oid,
      'name': instance.name,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      message: json['message'] as String?,
      code: json['code'] as int?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'status': instance.status,
    };
