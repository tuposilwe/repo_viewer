import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_viewer/github/core/shared/providers.dart';
import 'package:repo_viewer/github/repos/starred_repos/application/starred_repos_notifier.dart';
import 'package:repo_viewer/github/repos/starred_repos/presentation/loading_repo_tile.dart';
import 'package:repo_viewer/github/repos/starred_repos/presentation/repo_tile.dart';

class PaginatedReposListView extends StatelessWidget {
  const PaginatedReposListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(starredReposNotifierProvider);
        return ListView.builder(
          itemCount: state.map(
            initial: (_) => 0,
            loadInProgress: (e) => e.repos.entity.length + e.itemsPerPage,
            loadSuccess: (e) => e.repos.entity.length,
            loadFailure: (e) => e.repos.entity.length + 1,
          ),
          itemBuilder: (context, index) {
            return state.map(
              initial: (_) => Container(),
              loadInProgress: (e) {
                if (index < e.repos.entity.length) {
                  return RepoTile(repo: e.repos.entity[index]);
                } else {
                  return const LoadingRepoTile();
                }
              },
              loadSuccess: (e) => RepoTile(repo: e.repos.entity[index]),
              loadFailure: (e) => Container(),
            );
          },
        );
      },
    );
  }
} 
