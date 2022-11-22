import 'package:pokedex/core/api/pokemon_api.dart';

class PokemonRepository {
  PokemonRepository(this.pokemonApi);

  final PokemonApi pokemonApi;

  Future<void> getPokemons() async {
    return pokemonApi.getPokemons();
  }

  Future<void> getPokemonById() async {
    return pokemonApi.getPokemonById();
  }

  Future<void> getPokemonByName() async {
    return pokemonApi.getPokemonByName();
  }
}
