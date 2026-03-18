import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/main/presentation/pages/main_page.dart';
import '../../features/splash/presentation/pages/splash_page.dart';

abstract class AppRoutes {
  static const splash = '/';
  static const main = '/main';
}

final appRouter = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      pageBuilder: (context, state) => buildTransitionPage(childScreen: const SplashPage(), state: state),
    ),
    GoRoute(
      path: AppRoutes.main,
      pageBuilder: (context, state) => buildTransitionPage(childScreen: const MainPage(), state: state, hasDuration: true),
    ),
  ],
);

CustomTransitionPage buildTransitionPage({required Widget childScreen, required GoRouterState state, bool hasDuration = false}){
  return CustomTransitionPage(
    key: state.pageKey,
    child: childScreen,
    transitionDuration: Duration(milliseconds: hasDuration ? 500 : 0),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}


