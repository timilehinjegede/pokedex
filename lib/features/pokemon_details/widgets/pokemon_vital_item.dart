import 'package:pokedex/utils/utils.dart';
import 'package:flutter/material.dart';

class PokemonVitalItem extends StatelessWidget {
  const PokemonVitalItem({
    super.key,
    required this.vitalName,
    required this.vitalValue,
  });

  final String vitalName;
  final String vitalValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            vitalName,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: pokedexColors.grey,
            ),
          ),
          YBox(2.sp),
          Text(
            vitalValue,
            style: TextStyle(
              fontSize: 14.sp,
              color: pokedexColors.text,
            ),
          ),
        ],
      ),
    );
  }
}
