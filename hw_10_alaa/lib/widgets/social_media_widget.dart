import 'package:flutter/material.dart';
import 'package:hw_10_alaa/constant/space.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("asset/images/icon_facebook_.png"),
        width24,
        Image.asset("asset/images/icon_instagram.png"),
        width24,
        Image.asset("asset/images/icon_twitter.png"),
      ],
    );
  }
}
