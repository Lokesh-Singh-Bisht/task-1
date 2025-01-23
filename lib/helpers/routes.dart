import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stroll_task_1/helpers/utilities.dart';
import 'package:stroll_task_1/screens/questionnaire_screen.dart';
import 'package:stroll_task_1/screens/home_screen.dart';

class AppRoutes {
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> sectionNavigatorKey =
      GlobalKey<NavigatorState>();

  static const String questionnaireScreen = 'questionnaireScreen';
  static const String matchScreen = 'matchScreen';
  static const String chatScreen = 'chatScreen';
  static const String profileScreen = 'profileScreen';

  static GoRouter routes = GoRouter(
    debugLogDiagnostics: kDebugMode,
    onException: (context, state, router) =>
        {lg.e("Go Router on exception section")},
    navigatorKey: rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          final String currentPath = GoRouter.of(context)
              .routeInformationProvider
              .value
              .uri
              .toString();
          return HomeScreen(
            navigationShell: navigationShell,
            currentPath: currentPath,
          );
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: sectionNavigatorKey,
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) {
                  return QuestionnaireScreen();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/$matchScreen',
                builder: (context, state) {
                  return QuestionnaireScreen();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/$chatScreen',
                builder: (context, state) {
                  return QuestionnaireScreen();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/$profileScreen',
                builder: (context, state) {
                  return QuestionnaireScreen();
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
