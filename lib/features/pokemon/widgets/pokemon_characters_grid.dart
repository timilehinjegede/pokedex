import 'dart:math';

import 'package:pokedex/features/pokemon/widgets/widgets.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:flutter/material.dart';

class PokemonCharactersGrid extends StatelessWidget {
  const PokemonCharactersGrid({
    super.key,
    this.scrollController,
  });

  final ScrollController? scrollController;

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
                  cardColor: cardColor,
                  onPokemonTapped: () {},
                );
              },
              childCount: 10,
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
