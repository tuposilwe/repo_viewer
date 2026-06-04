import 'package:repo_viewer/core/infrastructure/remote_response.dart';
import 'package:repo_viewer/github/core/infrastructure/github_repo_dto.dart';
import 'package:repo_viewer/github/core/infrastructure/pagination_config.dart';
import 'package:repo_viewer/github/repos/core/infrastructure/repos_remote_service.dart';

class SearchedReposRemoteService extends ReposRemoteService {
  const SearchedReposRemoteService(super.dio, super.headersCache);

  Future<RemoteResponse<List<GithubRepoDto>>> getSearchedReposPage(
    int page,
    String query,
  ) => super.getPage(
    requestUri: Uri.https("api.github.com", '/search/repositories', {
      'q': query,
      'page': '$page',
      'per_page': PaginationConfig.itemsPerPage.toString(),
    }),
    jsonDataSelector: (json) => json['items'] as List<dynamic>,
  );
}
