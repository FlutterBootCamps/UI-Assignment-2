import 'package:flutter/material.dart';
import 'package:hw_10/utils/colors.dart';

class QRAvatar extends StatelessWidget {
  const QRAvatar({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          backgroundColor: whiteColor,
          backgroundImage: AssetImage(image),
          radius: 59.375,
        ),
        Positioned(
            left: 100,
            top: 20,
            child: Image.asset(
              "assets/images/qr_code.png",
            ))
      ],
    );
  }
}
