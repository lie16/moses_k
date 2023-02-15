part of 'fetch_pokemon_cubit.dart';

@immutable
abstract class FetchPokemonState {}

class FetchPokemonInitial extends FetchPokemonState {}

class FetchPokemonLoading extends FetchPokemonState {
  FetchPokemonLoading();
}

class FetchPokemonLoaded extends FetchPokemonState {
  FetchPokemonLoaded({required this.pokemonData});
  final FetchPokemon$Query$Pokemon? pokemonData;
}

class FetchPokemonError extends FetchPokemonState {}
