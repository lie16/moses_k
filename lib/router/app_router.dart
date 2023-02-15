import 'package:go_router/go_router.dart';
import 'package:moses_k/feature/pokemon/pokemon_view.dart';

import '../feature/authentication/presentation/login_view.dart';
import '../feature/pokemon/home.dart';

enum AppRoute {
  home,
  login,
  pokeDetail,
}

final router = GoRouter(
  initialLocation: '/login',
  debugLogDiagnostics: true,
  routerNeglect: true,
  routes: [
    GoRoute(
      path: '/login',
      name: AppRoute.login.name,
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const LoginView(),
      ),
    ),
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const Home(),
      ),
    ),
    GoRoute(
      path: '/pokemon',
      name: AppRoute.pokeDetail.name,
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: PokemonView(
          pokemonName: state.queryParams['name'] ?? '',
        ),
      ),
    ),
  ],
);
