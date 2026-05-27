// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

import 'package:repo_viewer/core/infrastructure/remote_response.dart';
import 'package:repo_viewer/github/core/infrastructure/github_headers_cache.dart';
import 'package:repo_viewer/github/core/infrastructure/github_repo_dto.dart';

class StarredReposRemoteService {
  final Dio _dio;
  final GithubHeadersCache _headersCache;
  
  const StarredReposRemoteService(
    this._dio,
    this._headersCache,
  );

  Future<RemoteResponse<List<GithubRepoDto>>> getStarredReposPage(int page) async {

  }
}
