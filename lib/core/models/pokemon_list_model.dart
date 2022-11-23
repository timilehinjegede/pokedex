import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/core/models/pokemon_model.dart';

part 'pokemon_list_model.freezed.dart';
part 'pokemon_list_model.g.dart';

@freezed
class PokemonListModel with _$PokemonListModel {
  const factory PokemonListModel({
    required int count,
    String? next,
    String? previous,
    required List<PokemonModel> pokemons,
  }) = _PokemonListModel;

  factory PokemonListModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonListModelFromJson(json);
}
