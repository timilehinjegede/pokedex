import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

@freezed
class PokemonModel with _$PokemonModel {
  const PokemonModel._();

  const factory PokemonModel({
    required String name,
    required String? url,
    required int? height,
    required int? id,
    required int? weight,
    required Sprites? sprites,
    @Default([]) List<Type> types,
    @Default([]) List<StatElement> stats,
    @Default(false) bool isFavourite,
  }) = _PokemonModel;

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);

  int get pokemonNumber {
    final splitUrl = url!.split('/')..removeLast();
    return int.parse(splitUrl.last);
  }

  String get image {
    if (sprites != null) {
      return sprites!.other.officialArtwork.frontDefault;
    }

    return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$pokemonNumber.png';
  }
}

@freezed
class Sprites with _$Sprites {
  const factory Sprites({
    required Other other,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}

@freezed
class Other with _$Other {
  const factory Other({
    @JsonKey(name: 'official-artwork') required OfficialArtwork officialArtwork,
  }) = _Other;

  factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);
}

@freezed
class OfficialArtwork with _$OfficialArtwork {
  const factory OfficialArtwork({
    @JsonKey(name: 'front_default') required String frontDefault,
  }) = _OfficialArtwork;

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkFromJson(json);
}

@freezed
class StatElement with _$StatElement {
  const factory StatElement({
    @JsonKey(name: 'base_stat') required int baseStat,
    required TypeClass stat,
  }) = _StatElement;

  factory StatElement.fromJson(Map<String, dynamic> json) =>
      _$StatElementFromJson(json);
}

@freezed
class Type with _$Type {
  const factory Type({
    required int slot,
    required TypeClass type,
  }) = _Type;

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}

@freezed
class TypeClass with _$TypeClass {
  const factory TypeClass({
    required String name,
  }) = _TypeClass;

  factory TypeClass.fromJson(Map<String, dynamic> json) =>
      _$TypeClassFromJson(json);
}
