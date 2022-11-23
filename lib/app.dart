import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/core/repository/pokemon_repository.dart';
import 'package:pokedex/splash_screen.dart';
import 'package:pokedex/utils/utils.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.pokemonRepository,
  });

  final PokemonRepository pokemonRepository;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: pokemonRepository,
      child: MaterialApp(
        title: 'Pokedex',
        debugShowCheckedModeBanner: false,
        theme: pokedexTheme,
        home: Builder(
          builder: (context) {
            final media = MediaQuery.of(context);
            Dims.setSize(media);
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1,
              ),
              child: const SplashScreen(),
            );
          },
        ),
      ),
    );
  }
}
