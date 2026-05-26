// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GithubRepoDto _$GithubRepoDtoFromJson(Map<String, dynamic> json) =>
    _GithubRepoDto(
      owner: UserDTO.fromJson(json['owner'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: _descriptionFromJson(json['description']),
      stargazersCount: (json['stargazers_count'] as num).toInt(),
    );

Map<String, dynamic> _$GithubRepoDtoToJson(_GithubRepoDto instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'name': instance.name,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
    };
