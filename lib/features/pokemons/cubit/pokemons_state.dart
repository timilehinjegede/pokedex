part of 'pokemons_cubit.dart';

@freezed
class PokemonsState with _$PokemonsState {
  const factory PokemonsState({
    required PokemonStatus status,
    bool? hasReachedMax,
    List<PokemonModel>? pokemons,
  }) = _PokemonsState;
}
