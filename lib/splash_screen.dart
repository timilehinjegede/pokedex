import 'package:pokedex/features/pokemons/views/all_pokemons_screen.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  late Animation<double> _sizeAnimation;
  late Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3, milliseconds: 500),
    );

    _rotateAnimation = Tween<double>(
      begin: 0,
      end: 3,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 1.0, curve: Curves.easeInOut),
      ),
    );

    _sizeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.3, 0.6, curve: Curves.easeOutCubic),
      ),
    );

    _animationController.forward();
    _animationController.addStatusListener((status) {
      _goToNextScreen(status);
    });
  }

  void _goToNextScreen(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AllPokemonsScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: pokedexColors.primary,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder<Offset>(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                tween: Tween<Offset>(
                  begin: const Offset(-500, 0),
                  end: Offset.zero,
                ),
                child: SvgPicture.asset('assets/images/ic_logo.svg'),
                builder: (context, offset, child) {
                  return Transform.translate(
                    offset: offset,
                    child: AnimatedBuilder(
                      animation: _animationController,
                      child: SvgPicture.asset('assets/images/ic_logo.svg'),
                      builder: (context, child) {
                        return RotationTransition(
                          turns: _rotateAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),
              XBox(16.dx),
              AnimatedBuilder(
                animation: _animationController,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'POKEMON',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: pokedexColors.white,
                        letterSpacing: 5,
                      ),
                    ),
                    Text(
                      'Pokedex',
                      style: TextStyle(
                        fontSize: 48.sp,
                        color: pokedexColors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                builder: (context, child) {
                  return SizeTransition(
                    axisAlignment: 1.0,
                    axis: Axis.horizontal,
                    sizeFactor: _sizeAnimation,
                    child: child,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
