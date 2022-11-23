part of 'pokemon_details_cubit.dart';

@freezed
class PokemonDetailsState with _$PokemonDetailsState {
  const factory PokemonDetailsState({
    required PokemonStatus status,
    PokemonModel? pokemonModel,
  }) = _PokemonDetailsState;
}
