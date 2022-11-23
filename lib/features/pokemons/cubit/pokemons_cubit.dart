import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/core/models/pokemon_model.dart';
import 'package:pokedex/core/repository/pokemon_repository.dart';
import 'package:pokedex/utils/utils.dart';

part 'pokemons_state.dart';
part 'pokemons_cubit.freezed.dart';

class PokemonsCubit extends Cubit<PokemonsState> {
  PokemonsCubit(this.pokemonRepository)
      : super(
          const PokemonsState(status: PokemonStatus.initial),
        );

  final PokemonRepository pokemonRepository;

  Future<void> getPokemonById(int id) async {
    emit(state.copyWith(status: PokemonStatus.loading));

    try {
      final pokemonList = await pokemonRepository.getPokemons();

      emit(
        state.copyWith(
          status: PokemonStatus.success,
          pokemons: pokemonList.pokemons,
          hasReachedMax: pokemonList.next != null,
        ),
      );
    } catch (e) {
      addError(e.toString(), StackTrace.current);
      emit(state.copyWith(status: PokemonStatus.failure));
    }
  }
}
