import 'package:flutter/material.dart';

class SocialMediaBar extends StatelessWidget {
  const SocialMediaBar({
    super.key,
    required this.icons,
  });
  final List<Widget> icons;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: icons,
      ),
    );
  }
}
