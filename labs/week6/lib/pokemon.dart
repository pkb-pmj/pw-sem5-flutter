/// 1. JSON
///    Make the classes in this file deserializable from JSON.
///    ***Don't generate `toJson` methods as they're not needed.***
///    Use the `json_serializable` package:
///    https://pub.dev/packages/json_serializable
///
/// 2. Value-based equality
///    Define value-based equality for the classes in this file.
///    Use the `equatable` package:
///    https://pub.dev/packages/equatable
library;

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pokemon.g.dart';

@JsonSerializable(createJsonSchema: true)
class const Pokemons({
  // This field is called `results` in the JSON.
  @JsonKey(name: 'results') required final List<PokemonEntry> pokemons,
  required final int count,
}) with Equatable {
  factory fromJson(Map<String, dynamic> json) => _$PokemonsFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonsToJson(this);

  static const jsonSchema = _$PokemonsJsonSchema;

  @override
  List<Object?> get props => [pokemons, count];
}

@JsonSerializable(createJsonSchema: true)
class const PokemonEntry({
  required final String name,
  required final String url,
}) with Equatable {
  factory fromJson(Map<String, dynamic> json) => _$PokemonEntryFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonEntryToJson(this);

  static const jsonSchema = _$PokemonEntryJsonSchema;

  @override
  List<Object?> get props => [name, url];
}

@JsonSerializable(createJsonSchema: true)
class const Pokemon({
  required final int id,
  required final String name,
  required final int baseExperience,
  required final int height,
  required final int weight,
}) with Equatable {
  factory fromJson(Map<String, dynamic> json) => _$PokemonFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonToJson(this);

  static const jsonSchema = _$PokemonJsonSchema;

  @override
  List<Object?> get props => [id, name, baseExperience, height, weight];
}
