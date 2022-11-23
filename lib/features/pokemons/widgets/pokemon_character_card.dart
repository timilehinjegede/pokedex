import 'package:pokedex/core/models/pokemon_model.dart';
import 'package:pokedex/utils/strings.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:pokedex/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';

class PokemonCharacterCard extends StatelessWidget {
  const PokemonCharacterCard({
    super.key,
    required this.pokemonModel,
    required this.onPokemonTapped,
    required this.cardColor,
  });

  final PokemonModel pokemonModel;
  final VoidCallback onPokemonTapped;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPokemonTapped,
      child: Container(
        decoration: BoxDecoration(
          color: pokedexColors.white,
          borderRadius: BorderRadius.circular(4.sp),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Hero(
                tag: '$pokemonImageHeroTag ${pokemonModel.pokemonNumber}',
                child: Container(
                  decoration: BoxDecoration(
                    color: cardColor,
                  ),
                  child: Center(
                    child: NetworkImageWidget(
                      imageUrl: pokemonModel.image,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 9.dx,
                vertical: 10.dy,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '#${pokemonModel.pokemonNumber.toString().padLeft(3, '0')}',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: pokedexColors.grey,
                    ),
                  ),
                  YBox(2.dy),
                  Text(
                    pokemonModel.name,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: pokedexColors.black.withOpacity(.87),
                    ),
                  ),
                  YBox(10.dy),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
