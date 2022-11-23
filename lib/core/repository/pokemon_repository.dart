import 'package:pokedex/core/api/pokemon_api.dart';
import 'package:pokedex/core/models/pokemon_list_model.dart';
import 'package:pokedex/core/models/pokemon_model.dart';

class PokemonRepository {
  PokemonRepository(this.pokemonApi);

  final PokemonApi pokemonApi;

  Future<PokemonListModel> getPokemons() async {
    return pokemonApi.getPokemons();
  }

  Future<PokemonModel> getPokemonById(int id) async {
    return pokemonApi.getPokemonById(id);
  }

  Future<void> getPokemonByName() async {
    return pokemonApi.getPokemonByName();
  }
}
