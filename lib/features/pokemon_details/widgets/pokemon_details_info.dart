import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/core/models/pokemon_model.dart';
import 'package:pokedex/features/pokemon_details/cubit/pokemon_details_cubit.dart';
import 'package:pokedex/utils/strings.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:pokedex/widgets/network_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PokemonDetailsInformation extends StatefulWidget {
  const PokemonDetailsInformation({
    super.key,
    required this.pokemon,
    required this.color,
  });

  final PokemonModel pokemon;
  final Color color;

  @override
  State<PokemonDetailsInformation> createState() =>
      _PokemonDetailsInformationState();
}

class _PokemonDetailsInformationState extends State<PokemonDetailsInformation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0, -.1),
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _animationController
      ..forward()
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                widget.pokemon.name,
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  color: pokedexColors.text,
                ),
              ),
              BlocSelector<PokemonDetailsCubit, PokemonDetailsState, List?>(
                selector: (state) {
                  return state.pokemonModel?.types;
                },
                builder: (context, state) {
                  if (state != null) {
                    return Text(
                      state.map((type) => type.type.name).join(', '),
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: pokedexColors.text,
                      ),
                    );
                  }

                  return const SizedBox.shrink();
                },
              ),
              const Spacer(),
              Text(
                '#${widget.pokemon.pokemonNumber.toString().padLeft(3, '0')}',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: pokedexColors.text,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          bottom: -10,
          child: SvgPicture.asset(
            'assets/images/ic_pattern.svg',
            color: widget.color.withOpacity(.1),
            height: 175.dy,
            width: 175.dx,
          ),
        ),
        Positioned(
          right: 20,
          bottom: 0,
          child: Hero(
            tag: '${pokemonImageHeroTag}1',
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (BuildContext context, Widget? child) {
                return SlideTransition(
                  position: _slideAnimation,
                  child: child,
                );
              },
              child: NetworkImageWidget(
                imageUrl: widget.pokemon.image,
                height: 140.dy,
                width: 125.dx,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PokemonCollapsedDetailsInformation extends StatelessWidget {
  const PokemonCollapsedDetailsInformation({
    super.key,
    required this.pokemon,
  });

  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '#${pokemon.pokemonNumber.toString().padLeft(3, '0')}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: NetworkImageWidget(
            imageUrl: pokemon.image,
            height: 50,
            width: 50,
          ),
        ),
      ],
    );
  }
}
