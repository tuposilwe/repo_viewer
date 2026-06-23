// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_floating_search_bar_plus/material_floating_search_bar_plus.dart';

import 'package:repo_viewer/search/shared/providers.dart';

class SearchBarCustom extends ConsumerStatefulWidget {
  final Widget body;
  final String title;
  final String hint;
  final void Function(String searchTerm) onShouldNavigateToResultPage;
  final void Function() onSignOutButtonPressed;

  const SearchBarCustom({
    super.key,
    required this.body,
    required this.title,
    required this.hint,
    required this.onShouldNavigateToResultPage,
    required this.onSignOutButtonPressed,
  });

  @override
  ConsumerState<SearchBarCustom> createState() => _SearchBarState();
}

class _SearchBarState extends ConsumerState<SearchBarCustom> {
  late FloatingSearchBarController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = FloatingSearchBarController();

    Future.microtask(
      () => ref.read(searchHistoryNotifierProvider.notifier).watchSearchTerms(),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
      controller: _controller,
      body: FloatingSearchBarScrollNotifier(child: widget.body),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(widget.title, style: Theme.of(context).textTheme.titleLarge),
          Text('Tap to search', style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
      hint: widget.hint,
      actions: [
        FloatingSearchBarAction.searchToClear(showIfClosed: false),
        FloatingSearchBarAction(
          child: IconButton(
            icon: Icon(MdiIcons.logoutVariant),
            splashRadius: 18,
            onPressed: () {
              widget.onSignOutButtonPressed();
            },
          ),
        ),
      ],
      onSubmitted: (query) {
        widget.onShouldNavigateToResultPage(query);
        ref.read(searchHistoryNotifierProvider.notifier).addSearchTerm(query);
        _controller.close();
      },
      builder: (context, transition) {
        return Material(
          color: Theme.of(context).cardColor,
          elevation: 4,
          borderRadius: BorderRadius.circular(8),
          clipBehavior: Clip.hardEdge,
          child: Consumer(
            builder: (context, ref, child) {
              final searchHistoryState = ref.watch(
                searchHistoryNotifierProvider,
              );
              return searchHistoryState.map(
                data: (history) {
                  return Column(
                    children: history.value
                        .map(
                          (term) => ListTile(
                            title: Text(term),
                            onTap: () {
                              print('hey');
                            },
                          ),
                        )
                        .toList(),
                  );
                },
                loading: (_) =>
                    const ListTile(title: LinearProgressIndicator()),
                error: (e) =>
                    ListTile(title: Text('Very unexpected error ${e.error}')),
              );
            },
          ),
        );
      },
    );
  }
}
