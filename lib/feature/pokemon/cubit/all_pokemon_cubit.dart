import 'package:artemis/artemis.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../graphql_api/graphql_api.dart';
import '../data_source/all_pokemons.dart';

part 'all_pokemon_state.dart';

class AllPokemonCubit extends Cubit<AllPokemonState> {
  AllPokemonCubit({required this.client}) : super(AllPokemonInitial());
  final ArtemisClient client;

  int offset = 1;
  List<AllPokemons$Query$PokemonList$PokemonItem?>? oldData;
  List<AllPokemons$Query$PokemonList$PokemonItem?>? newData;

  AllPokemons allPokemon = AllPokemons();

  void fetchAllPokemon({required int limit}) {
    if (state is AllPokemonLoading) return;

    final currentState = state;

    if (currentState is AllPokemonLoaded) {
      oldData = currentState.newPokeData;
    }

    emit(
      AllPokemonLoading(
        oldPokeData: oldData,
        isFirstFetch: offset == 1,
      ),
    );
    allPokemon
        .fetchAllPokemons(client: client, limit: limit, offset: offset)
        .then((value) {
      offset++;
      newData = (state as AllPokemonLoading).oldPokeData;
      if (value.pokemons?.results == null) {
        emit(AllPokemonEndOfFile());
      } else {
        newData?.addAll(value.pokemons!.results!);
        emit(AllPokemonLoaded(newPokeData: newData));
      }
    });
  }
}
