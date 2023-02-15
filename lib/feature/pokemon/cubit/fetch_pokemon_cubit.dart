import 'dart:developer';

import 'package:artemis/artemis.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../graphql_api/graphql_api.dart';
import '../data_source/fetch_pokemon.dart';

part 'fetch_pokemon_state.dart';

class FetchPokemonCubit extends Cubit<FetchPokemonState> {
  FetchPokemonCubit({required this.client}) : super(FetchPokemonInitial());
  final ArtemisClient client;

  FetchPokemon fetchPokemon = FetchPokemon();

  void fetchDetailPokemon({required String name}) {
    if (state is FetchPokemonLoading) return;
    emit(FetchPokemonLoading());

    final currentState = state;

    fetchPokemon
        .fetchDetailPokemon(
      client: client,
      name: name,
    )
        .then(
      (value) {
        log('cubit');
        log('${value.pokemon}');
        emit(FetchPokemonLoaded(pokemonData: value.pokemon));
      },
    );
  }
}
