import 'package:artemis/artemis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/pokemon/cubit/all_pokemon_cubit.dart';
import 'feature/pokemon/cubit/fetch_pokemon_cubit.dart';
import 'router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.client});
  final ArtemisClient client;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AllPokemonCubit(client: client),
        ),
        BlocProvider(
          create: (context) => FetchPokemonCubit(client: client),
        ),
      ],
      child: MaterialApp.router(
        title: 'Pokemon',
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
