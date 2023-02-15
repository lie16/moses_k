import 'package:artemis/artemis.dart';

import '../../../graphql_api/graphql_api.dart';

class FetchPokemon {
  static final FetchPokemon _instance = FetchPokemon._internal();

  FetchPokemon._internal();

  factory FetchPokemon(){
    return _instance;
  }

  Future<FetchPokemon$Query> fetchArtemisClient(
      {required ArtemisClient client, required String name}) async {
    final pokemonsQuery = FetchPokemonQuery(
        variables: FetchPokemonArguments(
      name: name,
    ));
    final result = await client.execute(pokemonsQuery);
    if (result.hasErrors) {
      throw Exception(result.errors);
    }
    return result.data!;
  }
}
