import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/core/models/pokemon_model.dart';
import 'package:pokedex/core/repository/pokemon_repository.dart';
import 'package:pokedex/utils/utils.dart';

part 'pokemon_details_state.dart';
part 'pokemon_details_cubit.freezed.dart';

class PokemonDetailsCubit extends Cubit<PokemonDetailsState> {
  PokemonDetailsCubit(this.pokemonRepository)
      : super(
          const PokemonDetailsState(status: PokemonStatus.initial),
        );

  final PokemonRepository pokemonRepository;

  Future<void> getPokemonById(int id) async {
    emit(state.copyWith(status: PokemonStatus.loading));

    try {
      final pokemonModel = await pokemonRepository.getPokemonById(id);

      emit(
        state.copyWith(
          status: PokemonStatus.success,
          pokemonModel: pokemonModel,
        ),
      );
    } catch (e) {
      addError(e.toString(), StackTrace.current);
      emit(state.copyWith(status: PokemonStatus.failure));
    }
  }

  void favouritePokemon(bool isFavourite) {
    final pokemon = state.pokemonModel;

    emit(
      state.copyWith(
        status: PokemonStatus.success,
        pokemonModel: pokemon!.copyWith(isFavourite: isFavourite),
      ),
    );
  }
}
