import 'package:flutter/material.dart';

// Custom Decoration for Dot Indicator
class DotIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return IndicatorPainter();
  }
}

// Custom BoxPainter for Dot Indicator
class IndicatorPainter extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // Obtain the size of the configuration
    final size = configuration.size!;

    // Create a Paint object for drawing
    final Paint paint = Paint();
    paint.color = const Color(0xffFF9A71); // Customize the color of the dot here

    const double radius = 3; // Customize the radius of the dot here

    // Calculate the center position of the dot
    final double centerX = offset.dx + size.width / 32 - radius - 8;
    final double centerY = size.height / 2;

    // Draw the dot on the canvas
    canvas.drawCircle(Offset(centerX, centerY), radius, paint);
  }
}