import 'package:flutter/material.dart';
import 'package:hw_10_alaa/constant/color.dart';

class Subtitle extends StatelessWidget {
  const Subtitle({super.key, required this.subtitle});
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: const TextStyle(
          color: lightGrey, fontSize: 10, fontWeight: FontWeight.w400),
    );
  }
}
