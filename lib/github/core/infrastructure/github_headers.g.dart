// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_headers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GithubHeaders _$GithubHeadersFromJson(Map<String, dynamic> json) =>
    _GithubHeaders(
      etag: json['etag'] as String?,
      link: json['link'] == null
          ? null
          : PaginationLink.fromJson(json['link'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GithubHeadersToJson(_GithubHeaders instance) =>
    <String, dynamic>{'etag': instance.etag, 'link': instance.link?.toJson()};

_PaginationLink _$PaginationLinkFromJson(Map<String, dynamic> json) =>
    _PaginationLink(maxPage: (json['maxPage'] as num).toInt());

Map<String, dynamic> _$PaginationLinkToJson(_PaginationLink instance) =>
    <String, dynamic>{'maxPage': instance.maxPage};
