import 'package:pokedex/utils/utils.dart';
import 'package:flutter/material.dart';

class TabIndicator extends BoxDecoration {
  final BoxPainter _painter;

  TabIndicator() : _painter = _TabIndicatorPainter();

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _TabIndicatorPainter extends BoxPainter {
  final Paint _paint;

  _TabIndicatorPainter()
      : _paint = Paint()
          ..color = pokedexColors.primary
          ..isAntiAlias = true;

  @override
  void paint(
    Canvas canvas,
    Offset offset,
    ImageConfiguration cfg,
  ) {
    double xAxisPos = offset.dx + cfg.size!.width / 2;
    double yAxisPos = offset.dy + cfg.size!.height - 4;

    final rRect = RRect.fromRectAndCorners(
      Rect.fromCenter(
        center: Offset(xAxisPos, yAxisPos),
        width: cfg.size!.width,
        height: 4.sp,
      ),
      topLeft: Radius.circular(4.sp),
      topRight: Radius.circular(4.sp),
    );

    canvas.drawRRect(rRect, _paint);
  }
}
