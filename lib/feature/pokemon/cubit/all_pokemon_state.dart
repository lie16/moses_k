part of 'all_pokemon_cubit.dart';

@immutable
abstract class AllPokemonState {}

class AllPokemonInitial extends AllPokemonState {}

class AllPokemonEndOfFile extends AllPokemonState {}

class AllPokemonLoading extends AllPokemonState {
  final List<AllPokemons$Query$PokemonList$PokemonItem?>? pokeData;
  final bool isFirstFetch;
  AllPokemonLoading({required this.pokeData, required this.isFirstFetch});
}

class AllPokemonLoaded extends AllPokemonState {
  // Todo kasih type data ntar
  final List<AllPokemons$Query$PokemonList$PokemonItem?>? pokeData;
  AllPokemonLoaded({required this.pokeData});
}
