import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labs_week6/common/error_message.dart';
import 'package:labs_week6/common/loading_indicator.dart';
import 'package:labs_week6/common/pokemon_list.dart';
import 'package:labs_week6/pokemon.dart';

class const BlocPage({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = PokemonBloc()..add(PokemonEvent());

    return Scaffold(
      appBar: AppBar(title: const Text('Bloc Pokémon')),
      body: BlocBuilder<PokemonBloc, PokemonState>(
        bloc: bloc,
        builder: (context, state) {
          switch (state) {
            case PokemonStateLoading _:
              return const LoadingIndicator();
            case final PokemonStateLoaded s:
              return PokemonList(
                entries: s.entries,
                onTap: (_) => throw UnimplementedError(),
              );
            case final PokemonStateError s:
              return ErrorMessage(error: s.message);
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.refresh),
        label: const Text('Reload'),
        onPressed: () {
          bloc.add(PokemonEvent());
        },
      ),
    );
  }
}

sealed class PokemonState();

class PokemonStateLoading() extends PokemonState;

class PokemonStateLoaded(final List<PokemonEntry> entries) extends PokemonState;

class PokemonStateError(final String message) extends PokemonState;

class PokemonEvent();

class PokemonBloc() extends Bloc<PokemonEvent, PokemonState> {
  this : super(PokemonStateLoading()) {
    on<PokemonEvent>(_onLoadRequested, transformer: droppable());
  }

  Future<void> _onLoadRequested(
    PokemonEvent event,
    Emitter<PokemonState> emit,
  ) async {
    emit(PokemonStateLoading());

    try {
      final pokemons = await loadPokemons();
      emit(PokemonStateLoaded(pokemons.pokemons));
    } catch (err) {
      emit(PokemonStateError(err.toString()));
    }
  }
}

final url = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=100');

Future<Pokemons> loadPokemons() async {
  final dio = Dio();
  return Pokemons.fromJson(await _getJson(dio, url));
}

Future<Map<String, dynamic>> _getJson(Dio dio, Uri uri) async {
  final response = await dio.getUri<Map<String, dynamic>>(uri);
  return switch (response.data) {
    final json? => json,
    null => throw FormatException('Empty response from $uri'),
  };
}
