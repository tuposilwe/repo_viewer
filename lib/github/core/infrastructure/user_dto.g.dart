// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDTO _$UserDTOFromJson(Map<String, dynamic> json) => _UserDTO(
  name: json['login'] as String,
  avatarUrl: json['avatar_url'] as String,
);

Map<String, dynamic> _$UserDTOToJson(_UserDTO instance) => <String, dynamic>{
  'login': instance.name,
  'avatar_url': instance.avatarUrl,
};
