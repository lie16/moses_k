import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../graphql_api/graphql_api.dart';
import 'cubit/fetch_pokemon_cubit.dart';

class PokemonView extends StatefulWidget {
  const PokemonView({super.key, required this.pokemonName});

  final String pokemonName;

  @override
  State<PokemonView> createState() => _PokemonViewState();
}

class _PokemonViewState extends State<PokemonView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<FetchPokemonCubit>(context)
        .fetchDetailPokemon(name: widget.pokemonName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FetchPokemonCubit, FetchPokemonState>(
        builder: (context, state) {
          FetchPokemon$Query$Pokemon? data;
          if (state is FetchPokemonLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is FetchPokemonLoaded) {
            data = state.pokemonData;
            // log(data.id);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // display the name and image
                Text(
                  'Name: ${data!.name ?? ''}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Image.network(data.sprites!.frontDefault ?? ''),

                // display the list of moves
                const Text(
                  'Moves:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.moves?.length,
                    itemBuilder: (BuildContext context, int index) {
                      final move = data?.moves![index]?.move?.name;
                      return Text(move ?? '');
                    },
                  ),
                ),
              ],
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
