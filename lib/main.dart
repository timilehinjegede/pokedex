import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/app.dart';
import 'package:pokedex/core/api/pokemon_api.dart';
import 'package:pokedex/core/repository/pokemon_repository.dart';
import 'package:pokedex/pokemon_bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = PokemonBlocObserver();

  final pokemonRepository = PokemonRepository(PokemonApi());

  runApp(
    MyApp(
      pokemonRepository: pokemonRepository,
    ),
  );
}
