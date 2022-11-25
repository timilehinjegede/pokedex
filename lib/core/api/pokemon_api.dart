import 'dart:convert';
import 'dart:developer';

import 'package:pokedex/core/models/pokemon_list_model.dart';
import 'package:pokedex/core/models/pokemon_model.dart';
import 'package:http/http.dart' as http;

class PokemonApi {
  Future<PokemonListModel> getPokemons({
    required int page,
    required int limit,
  }) async {
    final allPokemonsUrl = Uri.https(
      'pokeapi.co',
      'api/v2/pokemon',
      {
        'limit': '$limit',
        'offset': '${limit * page}',
      },
    );

    log('url is ${allPokemonsUrl.toString()}');

    try {
      var response = await http.get(allPokemonsUrl);

      log('response is ${response.body}');

      return PokemonListModel.fromJson(
        jsonDecode(response.body),
      );
    } catch (e) {
      log('e is $e');
      throw Exception('Unable to fetch pokemons.');
    }
  }

  Future<PokemonModel> getPokemonById(int id) async {
    final allPokemonsUrl = Uri.https(
      'pokeapi.co',
      'api/v2/pokemon/$id',
    );

    try {
      var response = await http.get(allPokemonsUrl);

      log('response is ${response.body}');

      return PokemonModel.fromJson(
        jsonDecode(response.body),
      );
    } catch (_) {
      throw Exception('Unable to fetch pokemon details.');
    }
  }

  Future<void> getPokemonByName() async {
    throw UnimplementedError();
  }
}
