// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class AllPokemons$Query$PokemonList$PokemonItem extends JsonSerializable
    with EquatableMixin {
  AllPokemons$Query$PokemonList$PokemonItem();

  factory AllPokemons$Query$PokemonList$PokemonItem.fromJson(
          Map<String, dynamic> json) =>
      _$AllPokemons$Query$PokemonList$PokemonItemFromJson(json);

  String? url;

  String? name;

  String? image;

  @override
  List<Object?> get props => [url, name, image];
  @override
  Map<String, dynamic> toJson() =>
      _$AllPokemons$Query$PokemonList$PokemonItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllPokemons$Query$PokemonList extends JsonSerializable
    with EquatableMixin {
  AllPokemons$Query$PokemonList();

  factory AllPokemons$Query$PokemonList.fromJson(Map<String, dynamic> json) =>
      _$AllPokemons$Query$PokemonListFromJson(json);

  int? count;

  String? next;

  String? previous;

  int? nextOffset;

  int? prevOffset;

  bool? status;

  String? message;

  List<AllPokemons$Query$PokemonList$PokemonItem?>? results;

  @override
  List<Object?> get props =>
      [count, next, previous, nextOffset, prevOffset, status, message, results];
  @override
  Map<String, dynamic> toJson() => _$AllPokemons$Query$PokemonListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllPokemons$Query extends JsonSerializable with EquatableMixin {
  AllPokemons$Query();

  factory AllPokemons$Query.fromJson(Map<String, dynamic> json) =>
      _$AllPokemons$QueryFromJson(json);

  AllPokemons$Query$PokemonList? pokemons;

  @override
  List<Object?> get props => [pokemons];
  @override
  Map<String, dynamic> toJson() => _$AllPokemons$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchPokemon$Query$Pokemon$Sprite extends JsonSerializable
    with EquatableMixin {
  FetchPokemon$Query$Pokemon$Sprite();

  factory FetchPokemon$Query$Pokemon$Sprite.fromJson(
          Map<String, dynamic> json) =>
      _$FetchPokemon$Query$Pokemon$SpriteFromJson(json);

  @JsonKey(name: 'front_default')
  String? frontDefault;

  @override
  List<Object?> get props => [frontDefault];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchPokemon$Query$Pokemon$SpriteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchPokemon$Query$Pokemon$Move$BaseName extends JsonSerializable
    with EquatableMixin {
  FetchPokemon$Query$Pokemon$Move$BaseName();

  factory FetchPokemon$Query$Pokemon$Move$BaseName.fromJson(
          Map<String, dynamic> json) =>
      _$FetchPokemon$Query$Pokemon$Move$BaseNameFromJson(json);

  String? name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchPokemon$Query$Pokemon$Move$BaseNameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchPokemon$Query$Pokemon$Move extends JsonSerializable
    with EquatableMixin {
  FetchPokemon$Query$Pokemon$Move();

  factory FetchPokemon$Query$Pokemon$Move.fromJson(Map<String, dynamic> json) =>
      _$FetchPokemon$Query$Pokemon$MoveFromJson(json);

  FetchPokemon$Query$Pokemon$Move$BaseName? move;

  @override
  List<Object?> get props => [move];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchPokemon$Query$Pokemon$MoveToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchPokemon$Query$Pokemon$Type$BaseName extends JsonSerializable
    with EquatableMixin {
  FetchPokemon$Query$Pokemon$Type$BaseName();

  factory FetchPokemon$Query$Pokemon$Type$BaseName.fromJson(
          Map<String, dynamic> json) =>
      _$FetchPokemon$Query$Pokemon$Type$BaseNameFromJson(json);

  String? name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchPokemon$Query$Pokemon$Type$BaseNameToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchPokemon$Query$Pokemon$Type extends JsonSerializable
    with EquatableMixin {
  FetchPokemon$Query$Pokemon$Type();

  factory FetchPokemon$Query$Pokemon$Type.fromJson(Map<String, dynamic> json) =>
      _$FetchPokemon$Query$Pokemon$TypeFromJson(json);

  FetchPokemon$Query$Pokemon$Type$BaseName? type;

  @override
  List<Object?> get props => [type];
  @override
  Map<String, dynamic> toJson() =>
      _$FetchPokemon$Query$Pokemon$TypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchPokemon$Query$Pokemon extends JsonSerializable with EquatableMixin {
  FetchPokemon$Query$Pokemon();

  factory FetchPokemon$Query$Pokemon.fromJson(Map<String, dynamic> json) =>
      _$FetchPokemon$Query$PokemonFromJson(json);

  int? id;

  String? name;

  FetchPokemon$Query$Pokemon$Sprite? sprites;

  List<FetchPokemon$Query$Pokemon$Move?>? moves;

  List<FetchPokemon$Query$Pokemon$Type?>? types;

  @override
  List<Object?> get props => [id, name, sprites, moves, types];
  @override
  Map<String, dynamic> toJson() => _$FetchPokemon$Query$PokemonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FetchPokemon$Query extends JsonSerializable with EquatableMixin {
  FetchPokemon$Query();

  factory FetchPokemon$Query.fromJson(Map<String, dynamic> json) =>
      _$FetchPokemon$QueryFromJson(json);

  FetchPokemon$Query$Pokemon? pokemon;

  @override
  List<Object?> get props => [pokemon];
  @override
  Map<String, dynamic> toJson() => _$FetchPokemon$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllPokemonsArguments extends JsonSerializable with EquatableMixin {
  AllPokemonsArguments({
    this.limit,
    this.offset,
  });

  @override
  factory AllPokemonsArguments.fromJson(Map<String, dynamic> json) =>
      _$AllPokemonsArgumentsFromJson(json);

  final int? limit;

  final int? offset;

  @override
  List<Object?> get props => [limit, offset];
  @override
  Map<String, dynamic> toJson() => _$AllPokemonsArgumentsToJson(this);
}

final ALL_POKEMONS_QUERY_DOCUMENT_OPERATION_NAME = 'all_pokemons';
final ALL_POKEMONS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'all_pokemons'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'pokemons'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'offset'),
            value: VariableNode(name: NameNode(value: 'offset')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'count'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'next'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'previous'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nextOffset'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'prevOffset'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'message'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'results'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'url'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'image'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      )
    ]),
  )
]);

class AllPokemonsQuery
    extends GraphQLQuery<AllPokemons$Query, AllPokemonsArguments> {
  AllPokemonsQuery({required this.variables});

  @override
  final DocumentNode document = ALL_POKEMONS_QUERY_DOCUMENT;

  @override
  final String operationName = ALL_POKEMONS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final AllPokemonsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AllPokemons$Query parse(Map<String, dynamic> json) =>
      AllPokemons$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FetchPokemonArguments extends JsonSerializable with EquatableMixin {
  FetchPokemonArguments({required this.name});

  @override
  factory FetchPokemonArguments.fromJson(Map<String, dynamic> json) =>
      _$FetchPokemonArgumentsFromJson(json);

  late String name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() => _$FetchPokemonArgumentsToJson(this);
}

final FETCH_POKEMON_QUERY_DOCUMENT_OPERATION_NAME = 'fetch_pokemon';
final FETCH_POKEMON_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'fetch_pokemon'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'pokemon'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'sprites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'front_default'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'moves'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'move'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  )
                ]),
              )
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'types'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  )
                ]),
              )
            ]),
          ),
        ]),
      )
    ]),
  )
]);

class FetchPokemonQuery
    extends GraphQLQuery<FetchPokemon$Query, FetchPokemonArguments> {
  FetchPokemonQuery({required this.variables});

  @override
  final DocumentNode document = FETCH_POKEMON_QUERY_DOCUMENT;

  @override
  final String operationName = FETCH_POKEMON_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FetchPokemonArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FetchPokemon$Query parse(Map<String, dynamic> json) =>
      FetchPokemon$Query.fromJson(json);
}
