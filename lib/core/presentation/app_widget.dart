import 'package:flutter/material.dart';
import 'package:repo_viewer/core/presentation/routes/app_router.dart';

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Repo Viewer',
      routerConfig: _appRouter.config(),
    );
  }
}
