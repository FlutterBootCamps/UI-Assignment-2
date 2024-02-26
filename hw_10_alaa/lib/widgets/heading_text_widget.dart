import 'package:flutter/material.dart';
import 'package:hw_10_alaa/constant/color.dart';
import 'package:hw_10_alaa/helper/screen_extention.dart';

class HeadingTitle extends StatelessWidget {
  const HeadingTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: white, fontSize: 11, fontWeight: FontWeight.w700),
        ),
        Container(
          width: context.getWidth() * 0.09,
          decoration: const BoxDecoration(
            color: white,
            border: Border(bottom: BorderSide(width: 0.5, color: orange)),
          ),
        ),
      ],
    );
  }
}
