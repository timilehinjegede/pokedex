import 'package:pokedex/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoadingIndicator extends StatefulWidget {
  const LoadingIndicator({
    super.key,
    this.size,
  });

  final double? size;

  @override
  State<LoadingIndicator> createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  final tween = Tween<double>(begin: 0, end: 3)
    ..chain(
      CurveTween(curve: Curves.easeInOut),
    );

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    )
      ..forward()
      ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: animationController.drive(tween),
      child: Center(
        child: SvgPicture.asset(
          'assets/images/ic_logo.svg',
          height: widget.size ?? 50.dy,
          width: widget.size ?? 50.dx,
        ),
      ),
    );
  }
}
