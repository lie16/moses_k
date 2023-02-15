import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moses_k/feature/pokemon/cubit/all_pokemon_cubit.dart';

import '../../graphql_api/graphql_api.dart';
import '../../shared/widget/bottom_loader.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _scrollController = ScrollController();
  int limit = 20;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_dismissOnScreenKeyboard);
    BlocProvider.of<AllPokemonCubit>(context).fetchAllPokemon(limit: limit);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.removeListener(_dismissOnScreenKeyboard);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AllPokemonCubit, AllPokemonState>(
        builder: (context, state) {
          List<AllPokemons$Query$PokemonList$PokemonItem?> data = [];
          bool isLoading = false;

          if (state is AllPokemonLoading && state.isFirstFetch) {
            return const CircularProgressIndicator();
          }
          if (state is AllPokemonLoading && state.isFirstFetch == false) {
            data = state.oldPokeData;
            isLoading = true;
          } else if (state is AllPokemonLoaded) {
            data = state.newPokeData;
          }
          return ListView.builder(
            controller: _scrollController,
            scrollDirection: Axis.vertical,
            itemCount: data.length + (isLoading ? 1 : 0),
            itemBuilder: (context, index) {
              if (index < data.length) {
                return Row(
                  children: [
                    Image.network(
                      data[index]!.image!,
                      // width: 50,
                      // height: 50,
                    ),
                    Text(data[index]?.name ?? ''),
                  ],
                );
              } else {
                return const BottomLoader();
              }
            },
          );
        },
      ),
    );
  }

  void _dismissOnScreenKeyboard() {
    if (_isBottom) {
      BlocProvider.of<AllPokemonCubit>(context).fetchAllPokemon(limit: limit);
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
