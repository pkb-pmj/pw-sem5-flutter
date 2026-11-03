import 'dart:isolate';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:labs_week5/pokemon.dart';

Future<Pokemon> loadPokemonSlow() async {
  // - Fetch pokémon entries from https://pokeapi.co/api/v2/pokemon?limit=100.
  // - Parse the response using Pokemons.fromJson
  // - Pick a random entry from the list
  // - Fetch the selected pokémon from its entry's url.
  // - Parse the response using Pokemon.fromJson and return it.
  final dio = Dio();
  final response1 = await dio.get<Map<String, dynamic>>(
    'https://pokeapi.co/api/v2/pokemon?limit=100',
  );
  final pokemons = Pokemons.fromJson(response1.data!);

  final pokemon = pokemons.pokemons[Random().nextInt(pokemons.pokemons.length)];

  final response2 = await dio.get<Map<String, dynamic>>(pokemon.url);
  return Pokemon.fromJson(response2.data!);
}

Future<Pokemon> loadPokemonFastAndEasy() async {
  return await compute((_) => loadPokemonSlow(), null);
}

Future<Pokemon> loadPokemonFastAndComplex() async {
  final controlPort = ReceivePort();
  await Isolate.spawn(
    (sendPort) async => sendPort.send(await loadPokemonSlow()),
    controlPort.sendPort,
  );
  return await controlPort.asBroadcastStream().first as Pokemon;
}
