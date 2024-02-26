import 'package:flutter/material.dart';
import 'package:hw_10_alaa/constant/color.dart';
import 'package:hw_10_alaa/helper/screen_extention.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: context.getWidth() * 0.85,
        height: context.getWidth() / 8,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: orange,
        ),
        child: const Text(
          "Hire Me",
          style: TextStyle(
              color: white, fontSize: 15, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
