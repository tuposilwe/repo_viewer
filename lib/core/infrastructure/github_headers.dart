import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_headers.freezed.dart';
part 'github_headers.g.dart';

@freezed
abstract class GithubHeaders with _$GithubHeaders {
  const GithubHeaders._();
  const factory GithubHeaders({String? etag, PaginationLink? link}) =
      _GithubHeaders;

  factory GithubHeaders.parse(Response response) {
    final link = response.headers.map['Link']?[0];

    return GithubHeaders(
      etag: response.headers.map['ETag']?[0],
      link: link == null
          ? null
          : PaginationLink.parse(
              link.split(','),
              requestUrl: response.requestOptions.uri.toString(),
            ),
    );
  }

  factory GithubHeaders.fromJson(Map<String, dynamic> json) =>
      _$GithubHeadersFromJson(json);
}

/*

Link: <https://api.github.com/user/starred?page=2>; rel="next",
 <https://api.github.com/user/starred?page=2>; rel="last"
 */

@freezed
abstract class PaginationLink with _$PaginationLink {
  const PaginationLink._();
  const factory PaginationLink({required int maxPage}) = _PaginationLink;

  factory PaginationLink.parse(
    List<String> values, {
    required String requestUrl,
  }) {
    final maxPage = _extractPageNumber(
      values.firstWhere(
        (e) => e.contains('rel="last"'),
        orElse: () => requestUrl,
      ),
    );

    return PaginationLink(maxPage: maxPage!);
  }

  static int? _extractPageNumber(String value) {
    final uriString = RegExp('<([^>]+)>').firstMatch(value)?.group(1);
    return int.tryParse(Uri.parse(uriString!).queryParameters['page']!);
  }

  factory PaginationLink.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinkFromJson(json);
}
