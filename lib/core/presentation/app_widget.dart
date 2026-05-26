import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_viewer/auth/application/auth_notifier.dart';
import 'package:repo_viewer/auth/shared/providers.dart';
import 'package:repo_viewer/core/presentation/routes/app_router.dart';
import 'package:repo_viewer/core/shared/providers.dart';

final _appRouter = AppRouter();

final initializationProvider = FutureProvider<Unit>((ref) async {
  await ref.read(sembastProvider).init();
  final authNotifier = ref.read(authNotifierProvider.notifier);
  await authNotifier.checkAndUpdateAuthStatus();
  return unit;
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(authNotifierProvider, (previous, next) {
      next.maybeWhen(
        authenticated: () => _appRouter.replace(const StarredReposRoute()),
        unauthenticated: () => _appRouter.replace(const SignInRoute()),
        orElse: () {},
      );
    });
    return MaterialApp.router(
      title: 'Repo Viewer',
      routerConfig: _appRouter.config(),
    );
  }
}
