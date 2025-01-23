import 'package:flutter/material.dart';
import 'package:stroll_task_1/helpers/routes.dart';
import 'package:stroll_task_1/themes/theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: MaterialApp.router(
        themeMode: ThemeMode.light,
        theme: AppCustomTheme.appTheme,
        title: 'Stroll Task - 1',
        routerConfig: AppRoutes.routes,
      ),
    );
  }
}
