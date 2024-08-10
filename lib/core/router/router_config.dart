import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:architecture/core/router/app_router.dart';
import 'package:architecture/feature/root/screen/root_screen.dart';
import 'package:architecture/feature/home/screen/home_screen.dart';
import 'package:architecture/feature/tab2/screen/tab2_screen.dart';
import 'package:architecture/feature/tab3/screen/tab3_screen.dart';
import 'package:architecture/feature/tab4/screen/tab4_screen.dart';

/// My Route
import 'package:architecture/feature/my/screen/my_screen.dart';
import 'package:architecture/feature/my/screen/auth_screen.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final routerConfig = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: AppRouter.home.path,
  routes: [
    StatefulShellRoute(
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRouter.home.routerConfigPath,
              name: AppRouter.home.name,
              builder: (BuildContext context, GoRouterState state) {
                return const HomeScreen();
              },
              routes: const [],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRouter.tab2.routerConfigPath,
              name: AppRouter.tab2.name,
              builder: (BuildContext context, GoRouterState state) {
                return const Tab2Screen();
              },
              routes: const [],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRouter.tab3.routerConfigPath,
              name: AppRouter.tab3.name,
              builder: (BuildContext context, GoRouterState state) {
                return const Tab3Screen();
              },
              routes: const [],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRouter.tab4.routerConfigPath,
              name: AppRouter.tab4.name,
              builder: (BuildContext context, GoRouterState state) {
                return const Tab4Screen();
              },
              routes: const [],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRouter.my.routerConfigPath,
              name: AppRouter.my.name,
              builder: (BuildContext context, GoRouterState state) {
                return const MyScreen();
              },
              routes: [
                GoRoute(
                  path: AppRouter.auth.routerConfigPath,
                  name: AppRouter.auth.name,
                  builder: (BuildContext context, GoRouterState state) {
                    return const AuthScreen();
                  },
                ),
              ],
            ),
          ],
        ),
      ],
      navigatorContainerBuilder: (BuildContext context, StatefulNavigationShell navigationShell, List<Widget> children) {
        return RootScreen(navigationShell: navigationShell, children: children);
      },
      builder: (BuildContext context, GoRouterState state, StatefulNavigationShell navigationShell) => navigationShell,
    ),
  ],
);
