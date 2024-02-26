
import 'package:flutter/material.dart';
import 'package:hw_10_alaa/constant/color.dart';

class CustomTabBarDotIndicator extends Decoration {
  final Color color ;
  final double radius;
const CustomTabBarDotIndicator({
  this.color = orange ,
  this.radius = 2,
});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CustomTabIndicatorPainter(
      color : color,
      radius: radius, 
      onChange: onChanged);
    // throw UnimplementedError();
   }
  }
  
  class _CustomTabIndicatorPainter extends BoxPainter{
    _CustomTabIndicatorPainter({ 
      required this.color, 
      required this.radius, 
      VoidCallback? onChange,}) :  _paint = Paint()
    ..color = color
    ..style = PaintingStyle.fill,
    super(onChange);

    final Paint _paint;
    final Color color;
    final double radius;

    @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    assert(configuration.size != null);
    final Rect rect = offset & configuration.size!;

    // to make dot un the left
      final double indicatorRadius = radius;
      final double labelwidth = rect.width - (indicatorRadius *2);
      final double labelheight = rect.height;

      final Rect labelRect = Rect.fromLTWH(offset.dx + indicatorRadius * 2 , offset.dy, labelwidth, labelheight);

      final Rect indicatorRect = Rect.fromCircle(center: Offset(labelRect.left - indicatorRadius,  labelRect.center.dy,), radius: indicatorRadius,);

      canvas.drawCircle(indicatorRect.center, indicatorRect.width / 2, _paint);


  }

  }

