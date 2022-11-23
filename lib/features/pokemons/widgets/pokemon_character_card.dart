import 'package:pokedex/utils/strings.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:pokedex/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';

class PokemonCharacterCard extends StatelessWidget {
  const PokemonCharacterCard({
    super.key,
    required this.onPokemonTapped,
    required this.cardColor,
  });

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
                tag: '${pokemonImageHeroTag}1',
                child: Container(
                  decoration: BoxDecoration(
                    color: cardColor,
                  ),
                  child: const Center(
                    child: NetworkImageWidget(
                      imageUrl: '',
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
                    '#001',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: pokedexColors.grey,
                    ),
                  ),
                  YBox(2.dy),
                  Text(
                    'Bulbasaur',
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
