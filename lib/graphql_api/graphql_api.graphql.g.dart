// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllPokemons$Query$PokemonList$PokemonItem
    _$AllPokemons$Query$PokemonList$PokemonItemFromJson(
            Map<String, dynamic> json) =>
        AllPokemons$Query$PokemonList$PokemonItem()
          ..url = json['url'] as String?
          ..name = json['name'] as String?
          ..image = json['image'] as String?;

Map<String, dynamic> _$AllPokemons$Query$PokemonList$PokemonItemToJson(
        AllPokemons$Query$PokemonList$PokemonItem instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'image': instance.image,
    };

AllPokemons$Query$PokemonList _$AllPokemons$Query$PokemonListFromJson(
        Map<String, dynamic> json) =>
    AllPokemons$Query$PokemonList()
      ..count = json['count'] as int?
      ..next = json['next'] as String?
      ..previous = json['previous'] as String?
      ..nextOffset = json['nextOffset'] as int?
      ..prevOffset = json['prevOffset'] as int?
      ..status = json['status'] as bool?
      ..message = json['message'] as String?
      ..results = (json['results'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : AllPokemons$Query$PokemonList$PokemonItem.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AllPokemons$Query$PokemonListToJson(
        AllPokemons$Query$PokemonList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'nextOffset': instance.nextOffset,
      'prevOffset': instance.prevOffset,
      'status': instance.status,
      'message': instance.message,
      'results': instance.results?.map((e) => e?.toJson()).toList(),
    };

AllPokemons$Query _$AllPokemons$QueryFromJson(Map<String, dynamic> json) =>
    AllPokemons$Query()
      ..pokemons = json['pokemons'] == null
          ? null
          : AllPokemons$Query$PokemonList.fromJson(
              json['pokemons'] as Map<String, dynamic>);

Map<String, dynamic> _$AllPokemons$QueryToJson(AllPokemons$Query instance) =>
    <String, dynamic>{
      'pokemons': instance.pokemons?.toJson(),
    };

FetchPokemon$Query$Pokemon$Sprite _$FetchPokemon$Query$Pokemon$SpriteFromJson(
        Map<String, dynamic> json) =>
    FetchPokemon$Query$Pokemon$Sprite()
      ..frontDefault = json['front_default'] as String?;

Map<String, dynamic> _$FetchPokemon$Query$Pokemon$SpriteToJson(
        FetchPokemon$Query$Pokemon$Sprite instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

FetchPokemon$Query$Pokemon$Move$BaseName
    _$FetchPokemon$Query$Pokemon$Move$BaseNameFromJson(
            Map<String, dynamic> json) =>
        FetchPokemon$Query$Pokemon$Move$BaseName()
          ..name = json['name'] as String?;

Map<String, dynamic> _$FetchPokemon$Query$Pokemon$Move$BaseNameToJson(
        FetchPokemon$Query$Pokemon$Move$BaseName instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

FetchPokemon$Query$Pokemon$Move _$FetchPokemon$Query$Pokemon$MoveFromJson(
        Map<String, dynamic> json) =>
    FetchPokemon$Query$Pokemon$Move()
      ..move = json['move'] == null
          ? null
          : FetchPokemon$Query$Pokemon$Move$BaseName.fromJson(
              json['move'] as Map<String, dynamic>);

Map<String, dynamic> _$FetchPokemon$Query$Pokemon$MoveToJson(
        FetchPokemon$Query$Pokemon$Move instance) =>
    <String, dynamic>{
      'move': instance.move?.toJson(),
    };

FetchPokemon$Query$Pokemon$Type$BaseName
    _$FetchPokemon$Query$Pokemon$Type$BaseNameFromJson(
            Map<String, dynamic> json) =>
        FetchPokemon$Query$Pokemon$Type$BaseName()
          ..name = json['name'] as String?;

Map<String, dynamic> _$FetchPokemon$Query$Pokemon$Type$BaseNameToJson(
        FetchPokemon$Query$Pokemon$Type$BaseName instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

FetchPokemon$Query$Pokemon$Type _$FetchPokemon$Query$Pokemon$TypeFromJson(
        Map<String, dynamic> json) =>
    FetchPokemon$Query$Pokemon$Type()
      ..type = json['type'] == null
          ? null
          : FetchPokemon$Query$Pokemon$Type$BaseName.fromJson(
              json['type'] as Map<String, dynamic>);

Map<String, dynamic> _$FetchPokemon$Query$Pokemon$TypeToJson(
        FetchPokemon$Query$Pokemon$Type instance) =>
    <String, dynamic>{
      'type': instance.type?.toJson(),
    };

FetchPokemon$Query$Pokemon _$FetchPokemon$Query$PokemonFromJson(
        Map<String, dynamic> json) =>
    FetchPokemon$Query$Pokemon()
      ..id = json['id'] as int?
      ..name = json['name'] as String?
      ..sprites = json['sprites'] == null
          ? null
          : FetchPokemon$Query$Pokemon$Sprite.fromJson(
              json['sprites'] as Map<String, dynamic>)
      ..moves = (json['moves'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FetchPokemon$Query$Pokemon$Move.fromJson(
                  e as Map<String, dynamic>))
          .toList()
      ..types = (json['types'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FetchPokemon$Query$Pokemon$Type.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FetchPokemon$Query$PokemonToJson(
        FetchPokemon$Query$Pokemon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sprites': instance.sprites?.toJson(),
      'moves': instance.moves?.map((e) => e?.toJson()).toList(),
      'types': instance.types?.map((e) => e?.toJson()).toList(),
    };

FetchPokemon$Query _$FetchPokemon$QueryFromJson(Map<String, dynamic> json) =>
    FetchPokemon$Query()
      ..pokemon = json['pokemon'] == null
          ? null
          : FetchPokemon$Query$Pokemon.fromJson(
              json['pokemon'] as Map<String, dynamic>);

Map<String, dynamic> _$FetchPokemon$QueryToJson(FetchPokemon$Query instance) =>
    <String, dynamic>{
      'pokemon': instance.pokemon?.toJson(),
    };

AllPokemonsArguments _$AllPokemonsArgumentsFromJson(
        Map<String, dynamic> json) =>
    AllPokemonsArguments(
      limit: json['limit'] as int?,
      offset: json['offset'] as int?,
    );

Map<String, dynamic> _$AllPokemonsArgumentsToJson(
        AllPokemonsArguments instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
    };

FetchPokemonArguments _$FetchPokemonArgumentsFromJson(
        Map<String, dynamic> json) =>
    FetchPokemonArguments(
      name: json['name'] as String,
    );

Map<String, dynamic> _$FetchPokemonArgumentsToJson(
        FetchPokemonArguments instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
