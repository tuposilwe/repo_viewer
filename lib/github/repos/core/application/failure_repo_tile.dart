// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:repo_viewer/github/core/domain/github_failure.dart';
import 'package:repo_viewer/github/repos/core/application/paginated_repos_list_view.dart';

class FailureRepoTile extends ConsumerWidget {
  final GithubFailure failure;

  const FailureRepoTile({super.key, required this.failure});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTileTheme(
      textColor: Theme.of(context).colorScheme.onError,
      iconColor: Theme.of(context).colorScheme.onError,
      child: Card(
        color: Theme.of(context).colorScheme.error,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListTile(
          title: const Text('An error occured, please , retry'),
          subtitle: Text(
            failure.map(api: (e) => 'API returned ${e.errorCode}'),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          leading: const Icon(Icons.warning),
          trailing: IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context
                  .findAncestorWidgetOfExactType<PaginatedReposListView>()
                  ?.getNextPage(ref);
              // ref
              //     .read(starredReposNotifierProvider.notifier)
              //     .getNextStarredReposPage();
            },
          ),
        ),
      ),
    );
  }
}
