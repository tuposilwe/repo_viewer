// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:repo_viewer/core/infrastructure/dio_extensions.dart';
import 'package:repo_viewer/core/infrastructure/network_exceptions.dart';

import 'package:repo_viewer/core/infrastructure/remote_response.dart';
import 'package:repo_viewer/github/core/infrastructure/github_headers.dart';
import 'package:repo_viewer/github/core/infrastructure/github_headers_cache.dart';
import 'package:repo_viewer/github/core/infrastructure/github_repo_dto.dart';

abstract class ReposRemoteService {
  final Dio _dio;
  final GithubHeadersCache _headersCache;

  const ReposRemoteService(this._dio, this._headersCache);

  Future<RemoteResponse<List<GithubRepoDto>>> getPage({
    required Uri requestUri,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
  }) async {
    // const baseUrl = "api.github.com";
    // const token = String.fromEnvironment('TOKEN');
    // const acceptHeader = "application/vnd.github+json";
    // const readmeAcceptHeader = "application/vnd.github.v3.html+json";

    final previousHeaders = await _headersCache.getHeaders(requestUri);

    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {
            // 'Authorization': 'bearer $token',
            // 'Accept': acceptHeader,
            'If-None-Match': previousHeaders?.etag ?? '',
          },
        ),
      );

      if (response.statusCode == 304) {
        return RemoteResponse.notModified(
          maxPage: previousHeaders?.link?.maxPage ?? 0,
        );
      } else if (response.statusCode == 200) {
        final headers = GithubHeaders.parse(response);
        await _headersCache.saveHeaders(requestUri, headers);
        final convertedData = jsonDataSelector(response.data)
            .map((e) => GithubRepoDto.fromJson(e as Map<String, dynamic>))
            .toList();
        return RemoteResponse.withNewData(
          convertedData,
          maxPage: headers.link?.maxPage ?? 0,
        );
      } else {
        throw RestAPiException(response.statusCode);
      }
    } on DioException catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        throw RestAPiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }

  Future<bool?> getStarredStatus(String fullRepoName) async {
    final requestUri = Uri.https(
      'api.github.com',
      '/user/starred/$fullRepoName',
    );
    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          validateStatus: (status) =>
              (status != null && status >= 200 && status < 400) ||
              status == 404,
        ),
      );

      if (response.statusCode == 204) {
        return true;
      } else if (response.statusCode == 404) {
        return false;
      } else {
        throw RestAPiException(response.statusCode);
      }
    } on DioException catch (e) {
      if (e.isNoConnectionError) {
        return null;
      } else if (e.response != null) {
        throw RestAPiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
