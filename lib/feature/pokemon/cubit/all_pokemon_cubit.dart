import 'package:artemis/artemis.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../graphql_api/graphql_api.dart';
import '../data_source/all_pokemons.dart';

part 'all_pokemon_state.dart';

class AllPokemonCubit extends Cubit<AllPokemonState> {
  AllPokemonCubit({required this.client}) : super(AllPokemonInitial());
  final ArtemisClient client; 

  int page = 1;
  List<AllPokemons$Query$PokemonList$PokemonItem?>? oldData;
  List<AllPokemons$Query$PokemonList$PokemonItem?>? newData;
  
  AllPokemons allPokemon = AllPokemons();

  void fetchAllPokemon({required int limit, required int offset}){
    if (state is AllPokemonLoading) return;

    final currentState = state;

    if (currentState is AllPokemonLoaded) {
      oldData = currentState.pokeData;
    }

    emit(
      AllPokemonLoading(
        pokeData: oldData,
        isFirstFetch: page == 1,
      ),
    );
    allPokemon.fetchAllPokemons(client: client, limit:limit, offset:offset).then((value) {
      page++;
      newData = (state as AllPokemonLoading).pokeData;
      if(value.pokemons?.results == null){
        emit(AllPokemonEndOfFile());
      } else {
        newData?.addAll(value.pokemons!.results!);
        emit(AllPokemonLoaded(pokeData: newData));
      }
      
    });
  }
}
