import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_viewer/core/presentation/toasts.dart';
import 'package:repo_viewer/github/core/domain/github_failure.dart';
import 'package:repo_viewer/github/core/presentation/no_results_display.dart';
import 'package:repo_viewer/github/core/shared/providers.dart';
import 'package:repo_viewer/github/repos/starred_repos/application/starred_repos_notifier.dart';
import 'package:repo_viewer/github/repos/starred_repos/presentation/failure_repo_tile.dart';
import 'package:repo_viewer/github/repos/starred_repos/presentation/loading_repo_tile.dart';
import 'package:repo_viewer/github/repos/starred_repos/presentation/repo_tile.dart';

class PaginatedReposListView extends ConsumerStatefulWidget {
  const PaginatedReposListView({super.key});

  @override
  ConsumerState<PaginatedReposListView> createState() =>
      _PaginatedReposListViewState();
}

class _PaginatedReposListViewState
    extends ConsumerState<PaginatedReposListView> {
  bool canLoadNextPage = false;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(starredReposNotifierProvider);
    ref.listen<StarredReposState>(starredReposNotifierProvider, (
      previous,
      next,
    ) {
      next.map(
        initial: (e) => canLoadNextPage = true,
        loadInProgress: (e) => canLoadNextPage = false,
        loadSuccess: (e) {
          if (!e.repos.isFresh) {
            showNoConnectionToast(
              "You're offline. Showing cached data.",
              context,
            );
          }
          return canLoadNextPage = e.isNextPageAvailable;
        },
        loadFailure: (e) {
          showErrorToast(
            e.failure.map(api: (f) => 'API error (${f.errorCode})'),
            context,
          );
          return canLoadNextPage = false;
        },
      );
    });
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        final metrics = notification.metrics;
        final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;

        if (canLoadNextPage && metrics.pixels >= limit) {
          canLoadNextPage = false;
          ref
              .read(starredReposNotifierProvider.notifier)
              .getNextStarredReposPage();
        }
        return false;
      },
      child:
          state.maybeWhen(
            loadSuccess: (repos, _) => repos.entity.isEmpty,
            orElse: () => false,
          )
          ? const NoResultsDisplay(message: 'Could not find anything')
          : _PaginatedListView(state: state),
    );
  }
}

class _PaginatedListView extends StatelessWidget {
  const _PaginatedListView({required this.state});

  final StarredReposState state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: state.map(
        initial: (_) => 0,
        loadInProgress: (e) => e.repos.entity.length + e.itemsPerPage,
        loadSuccess: (e) => e.repos.entity.length,
        loadFailure: (e) => e.repos.entity.length + 1,
      ),
      itemBuilder: (context, index) {
        return state.map(
          initial: (e) => RepoTile(repo: e.repos.entity[index]),
          loadInProgress: (e) {
            if (index < e.repos.entity.length) {
              return RepoTile(repo: e.repos.entity[index]);
            } else {
              return const LoadingRepoTile();
            }
          },
          loadSuccess: (e) => RepoTile(repo: e.repos.entity[index]),
          loadFailure: (e) {
            if (index < e.repos.entity.length) {
              return RepoTile(repo: e.repos.entity[index]);
            } else {
              return FailureRepoTile(failure: e.failure);
            }
          },
        );
      },
    );
  }
}
