import 'package:go_router/go_router.dart';

import '../feature/pokemon/home.dart';

enum AppRoute {
  home,
  login,
  pokeDetail,
}

final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routerNeglect: true,
  routes: [
    // GoRoute(
    //   path: '/login',
    //   name: AppRoute.login.name,
    //   pageBuilder: (context, state) => NoTransitionPage<void>(
    //     key: state.pageKey,
    //     child: const LoginScreen(),
    //   ),
    // ),
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: Home(),
      ),
    ),
  ],
);
