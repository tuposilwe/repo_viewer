import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_viewer/core/presentation/toasts.dart';
import 'package:repo_viewer/github/core/application/paginated_repos_notifier.dart';
import 'package:repo_viewer/github/core/domain/github_failure.dart';
import 'package:repo_viewer/github/core/presentation/no_results_display.dart';
import 'package:repo_viewer/github/repos/core/application/failure_repo_tile.dart';
import 'package:repo_viewer/github/repos/core/application/loading_repo_tile.dart';
import 'package:repo_viewer/github/repos/core/application/repo_tile.dart';

class PaginatedReposListView extends ConsumerStatefulWidget {
  final StateNotifierProvider<PaginatedReposNotifier, PaginatedReposState>
  paginatedReposNotifierProvider;

  final void Function(WidgetRef ref) getNextPage;
  final String noResultsMessage;

  const PaginatedReposListView({
    super.key,
    required this.paginatedReposNotifierProvider,
    required this.getNextPage,
    required this.noResultsMessage,
  });

  @override
  ConsumerState<PaginatedReposListView> createState() =>
      _PaginatedReposListViewState();
}

class _PaginatedReposListViewState
    extends ConsumerState<PaginatedReposListView> {
  bool canLoadNextPage = false;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(widget.paginatedReposNotifierProvider);
    ref.listen<PaginatedReposState>(widget.paginatedReposNotifierProvider, (
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
          // ref
          //     .read(starredReposNotifierProvider.notifier)
          //     .getNextStarredReposPage();

          widget.getNextPage(ref);
        }
        return false;
      },
      child:
          state.maybeWhen(
            loadSuccess: (repos, _) => repos.entity.isEmpty,
            orElse: () => false,
          )
          ? NoResultsDisplay(message: widget.noResultsMessage)
          : _PaginatedListView(state: state),
    );
  }
}

class _PaginatedListView extends StatelessWidget {
  const _PaginatedListView({required this.state});

  final PaginatedReposState state;

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
