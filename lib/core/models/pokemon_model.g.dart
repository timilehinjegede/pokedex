// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonModel _$$_PokemonModelFromJson(Map<String, dynamic> json) =>
    _$_PokemonModel(
      name: json['name'] as String,
      url: json['url'] as String?,
      height: json['height'] as int?,
      id: json['id'] as int?,
      weight: json['weight'] as int?,
      sprites: json['sprites'] == null
          ? null
          : Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>?)
              ?.map((e) => Type.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      stats: (json['stats'] as List<dynamic>?)
              ?.map((e) => StatElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isFavourite: json['isFavourite'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PokemonModelToJson(_$_PokemonModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'height': instance.height,
      'id': instance.id,
      'weight': instance.weight,
      'sprites': instance.sprites,
      'types': instance.types,
      'stats': instance.stats,
      'isFavourite': instance.isFavourite,
    };

_$_Sprites _$$_SpritesFromJson(Map<String, dynamic> json) => _$_Sprites(
      other: Other.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SpritesToJson(_$_Sprites instance) =>
    <String, dynamic>{
      'other': instance.other,
    };

_$_Other _$$_OtherFromJson(Map<String, dynamic> json) => _$_Other(
      officialArtwork: OfficialArtwork.fromJson(
          json['official-artwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OtherToJson(_$_Other instance) => <String, dynamic>{
      'official-artwork': instance.officialArtwork,
    };

_$_OfficialArtwork _$$_OfficialArtworkFromJson(Map<String, dynamic> json) =>
    _$_OfficialArtwork(
      frontDefault: json['front_default'] as String,
    );

Map<String, dynamic> _$$_OfficialArtworkToJson(_$_OfficialArtwork instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

_$_StatElement _$$_StatElementFromJson(Map<String, dynamic> json) =>
    _$_StatElement(
      baseStat: json['base_stat'] as int,
      stat: TypeClass.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StatElementToJson(_$_StatElement instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'stat': instance.stat,
    };

_$_Type _$$_TypeFromJson(Map<String, dynamic> json) => _$_Type(
      slot: json['slot'] as int,
      type: TypeClass.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TypeToJson(_$_Type instance) => <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_$_TypeClass _$$_TypeClassFromJson(Map<String, dynamic> json) => _$_TypeClass(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_TypeClassToJson(_$_TypeClass instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
