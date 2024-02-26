import 'package:flutter/material.dart';
import 'package:hw_10_alaa/constant/color.dart';

class ContainerDecoration extends StatelessWidget {
  const ContainerDecoration({super.key, required this.childContainer});
  final Widget childContainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: grey,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: childContainer,
    );
  }
}
