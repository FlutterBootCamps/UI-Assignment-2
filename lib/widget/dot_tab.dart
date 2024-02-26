import 'package:flutter/cupertino.dart';

class DotTab extends Decoration {
  final Color color;
  double radius;

  DotTab({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Paint _paint = Paint()
      ..color = color
      ..isAntiAlias = true;

    // Offset for positioning the circle horizontally
    final double dx = -4;
    // Offset for positioning the circle vertically
    final double dy = cfg.size!.height / 2;

    final Offset circleOffset = offset + Offset(dx, dy);

    // Draw the circle
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
