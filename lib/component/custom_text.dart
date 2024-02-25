
import 'package:flutter/widgets.dart';

class customText extends StatelessWidget {
  const customText({
    super.key,
    required this.color,
    required this.text,
    required this.size,
    required this.weight,
    required this.height,
  });
  final Color color;
  final String text;
  final double size;
  final FontWeight weight;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Text(
      softWrap: true,
      text,
      style: TextStyle(
          color: color, fontWeight: weight, fontSize: size, height: height),
    );
  }
}
