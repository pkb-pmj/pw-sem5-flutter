// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemons _$PokemonsFromJson(Map<String, dynamic> json) => Pokemons(
  pokemons: (json['results'] as List<dynamic>)
      .map((e) => PokemonEntry.fromJson(e as Map<String, dynamic>))
      .toList(),
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$PokemonsToJson(Pokemons instance) => <String, dynamic>{
  'results': instance.pokemons,
  'count': instance.count,
};

const _$PokemonsJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'results': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/PokemonEntry'},
    },
    'count': {'type': 'integer'},
  },
  'required': ['results', 'count'],
  r'$defs': {
    'PokemonEntry': {
      'type': 'object',
      'properties': {
        'name': {'type': 'string'},
        'url': {'type': 'string'},
      },
      'required': ['name', 'url'],
    },
  },
};

PokemonEntry _$PokemonEntryFromJson(Map<String, dynamic> json) =>
    PokemonEntry(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$PokemonEntryToJson(PokemonEntry instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};

const _$PokemonEntryJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'name': {'type': 'string'},
    'url': {'type': 'string'},
  },
  'required': ['name', 'url'],
};

Pokemon _$PokemonFromJson(Map<String, dynamic> json) => Pokemon(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  baseExperience: (json['baseExperience'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  weight: (json['weight'] as num).toInt(),
);

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'baseExperience': instance.baseExperience,
  'height': instance.height,
  'weight': instance.weight,
};

const _$PokemonJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'integer'},
    'name': {'type': 'string'},
    'baseExperience': {'type': 'integer'},
    'height': {'type': 'integer'},
    'weight': {'type': 'integer'},
  },
  'required': ['id', 'name', 'baseExperience', 'height', 'weight'],
};
