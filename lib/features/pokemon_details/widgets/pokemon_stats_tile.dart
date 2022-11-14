import 'dart:math';

import 'package:pokedex/utils/utils.dart';
import 'package:flutter/material.dart';

class PokemonStatsTile extends StatelessWidget {
  const PokemonStatsTile({
    super.key,
    required this.statName,
    required this.statValue,
  });

  final String statName;
  final int statValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 10.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              text: '$statName ',
              children: [
                TextSpan(
                  text: '$statValue',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: pokedexColors.text,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            style: TextStyle(
              fontSize: 14.sp,
              color: pokedexColors.grey,
            ),
          ),
          YBox(10.dy),
          LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                height: 5.dy,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.sp),
                  color: pokedexColors.background,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AnimatedContainer(
                    width: (statValue / 100) * constraints.maxWidth,
                    duration: const Duration(milliseconds: 500),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.sp),
                      color: randomColors[Random().nextInt(3)],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
