// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repo_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GithubRepoDetailDto _$GithubRepoDetailDtoFromJson(Map<String, dynamic> json) =>
    _GithubRepoDetailDto(
      fullName: json['fullName'] as String,
      html: json['html'] as String,
      starred: json['starred'] as bool,
    );

Map<String, dynamic> _$GithubRepoDetailDtoToJson(
  _GithubRepoDetailDto instance,
) => <String, dynamic>{
  'fullName': instance.fullName,
  'html': instance.html,
  'starred': instance.starred,
};
