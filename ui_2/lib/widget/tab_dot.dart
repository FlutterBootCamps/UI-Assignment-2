import 'package:flutter/material.dart';

class Dot extends Decoration {
  final Color color;
  final double radius;

  Dot({required this.color, this.radius = 4.0});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _DotPainter(color: color, radius: radius);
  }
}

class _DotPainter extends BoxPainter {
  final Color color;
  final double radius;

  _DotPainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint()..color = color;
    final Offset circleOffset =
        offset + Offset(-radius + 10, configuration.size!.height / 2); // Adjusted the offset
    canvas.drawCircle(circleOffset, radius, paint);
  }
}
