import 'package:flutter/material.dart';

import 'router/app_router.dart';
import 'themes/app_theme.dart';

void main() {
  runApp(const SafariApp());
}

class SafariApp extends StatelessWidget {
  const SafariApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Safari',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: appRouter,
    );
  }
}
