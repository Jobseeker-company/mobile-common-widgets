// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'master_data_response.g.dart';

@JsonSerializable(
  explicitToJson: true,
)
class MasterDataResponse extends Equatable {
  @JsonKey(name: 'meta')
  final Meta? meta;
  @JsonKey(name: 'data')
  final MasterDataContent? data;

  const MasterDataResponse({
    this.meta,
    this.data,
  });

  static MasterDataResponse fromJson(Map<String, dynamic> json) =>
      _$MasterDataResponseFromJson(json);

  Map<String?, dynamic> toJson() => _$MasterDataResponseToJson(this);

  @override
  List<Object?> get props => [
        meta,
        data,
      ];

  @override
  String toString() {
    return 'MasterDataResponse{meta: $meta, data: $data}';
  }
}

@JsonSerializable(
  explicitToJson: true,
)
class MasterDataContent extends Equatable {
  @JsonKey(name: 'content')
  final List<MasterDataItem>? content;

  const MasterDataContent({this.content});

  static MasterDataContent fromJson(Map<String, dynamic> json) =>
      _$MasterDataContentFromJson(json);

  Map<String?, dynamic> toJson() => _$MasterDataContentToJson(this);

  @override
  List<Object?> get props => [content];

  @override
  String toString() {
    return 'MasterDataContent{content: $content}';
  }
}

@JsonSerializable(
  explicitToJson: true,
)
class MasterDataItem extends Equatable {
  @JsonKey(name: 'oid')
  final String? oid;
  @JsonKey(name: 'name')
  final String? name;

  const MasterDataItem({
    this.oid,
    this.name,
  });

  static MasterDataItem fromJson(Map<String, dynamic> json) =>
      _$MasterDataItemFromJson(json);

  Map<String?, dynamic> toJson() => _$MasterDataItemToJson(this);

  @override
  List<Object?> get props => [
        oid,
        name,
      ];

  @override
  String toString() {
    return 'MasterDataItem{oid: $oid, name: $name}';
  }
}

@JsonSerializable(
  explicitToJson: true,
)
class Meta extends Equatable {
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'code')
  final int? code;
  @JsonKey(name: 'status')
  final String? status;

  const Meta({
    this.message,
    this.code,
    this.status,
  });

  static Meta fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String?, dynamic> toJson() => _$MetaToJson(this);

  @override
  List<Object?> get props => [
        message,
        code,
        status,
      ];

  @override
  String toString() {
    return 'Meta{message: $message, code: $code, status: $status}';
  }
}
