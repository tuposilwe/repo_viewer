import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_floating_search_bar_plus/material_floating_search_bar_plus.dart';
import 'package:repo_viewer/auth/shared/providers.dart';
import 'package:repo_viewer/core/presentation/routes/app_router.dart';
import 'package:repo_viewer/github/core/shared/providers.dart';
import 'package:repo_viewer/github/repos/core/application/paginated_repos_list_view.dart';

@RoutePage()
class StarredReposPage extends ConsumerStatefulWidget {
  const StarredReposPage({super.key});

  @override
  ConsumerState<StarredReposPage> createState() => _StarredReposPageState();
}

class _StarredReposPageState extends ConsumerState<StarredReposPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref
          .read(starredReposNotifierProvider.notifier)
          .getNextStarredReposPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Starred Repos'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        actions: [
          IconButton(
            onPressed: () {
              ref.read(authNotifierProvider.notifier).signOut();
            },
            icon: Icon(MdiIcons.logoutVariant),
          ),
          IconButton(
            onPressed: () {
              AutoRouter.of(
                context,
              ).push(SearchedReposRoute(searchTerm: 'angular'));
            },
            icon: Icon(MdiIcons.magnify),
          ),
        ],
      ),
      body: FloatingSearchBar(
         hint: 'Search...',
        builder: (context, transition) {
          return Container();
        },
        body: PaginatedReposListView(
          paginatedReposNotifierProvider: starredReposNotifierProvider,
          getNextPage: (ref) {
            ref
                .read(starredReposNotifierProvider.notifier)
                .getNextStarredReposPage();
          },
          noResultsMessage:
              "That's about everything we could find in your starred repos right now.",
        ),
      ),
    );
  }
}
