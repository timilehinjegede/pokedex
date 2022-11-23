import 'dart:math';

import 'package:pokedex/core/models/pokemon_model.dart';
import 'package:pokedex/features/pokemons/widgets/widgets.dart';
import 'package:pokedex/features/pokemon_details/views/pokemon_details_screen.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:flutter/material.dart';

class PokemonCharactersGrid extends StatelessWidget {
  const PokemonCharactersGrid({
    super.key,
    required this.pokemons,
    this.scrollController,
  });

  final ScrollController? scrollController;
  final List<PokemonModel> pokemons;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.dx,
            vertical: 16.dy,
          ),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final cardColor =
                    randomColors[Random().nextInt(3)].withOpacity(.1);
                return PokemonCharacterCard(
                  pokemonModel: pokemons[index],
                  cardColor: cardColor,
                  onPokemonTapped: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => PokemonDetailsScreen(
                          color: cardColor,
                        ),
                      ),
                    );
                  },
                );
              },
              childCount: pokemons.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.dx,
              mainAxisSpacing: 12.dy,
              childAspectRatio: 110.dx / 186.dy,
            ),
          ),
        )

        // SliverFillRemaining(
        //   child: Center(
        //     child: Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 15.sp),
        //       child: Text(
        //         'You haven\'t added a Pokemon to your favourites yet',
        //         style: TextStyle(
        //           fontSize: 14.sp,
        //           color: pokedexColors.grey,
        //         ),
        //       ),
        //     ),
        //   ),
        // )
      ],
    );
  }
}
