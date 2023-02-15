import 'package:artemis/artemis.dart';

import '../../../graphql_api/graphql_api.dart';

class AllPokemons {
  static final AllPokemons _instance = AllPokemons._internal();

  AllPokemons._internal();

  factory AllPokemons(){
    return _instance;
  }

  Future<AllPokemons$Query> fetchAllPokemons(
      {required ArtemisClient client, required int limit, required int offset}) async {
    final pokemonsQuery = AllPokemonsQuery(
        variables: AllPokemonsArguments(
      limit: limit,
      offset: offset,
    ));
    final result = await client.execute(pokemonsQuery);
    if (result.hasErrors) {
      throw Exception(result.errors);
    }
    return result.data!;
  }
}
