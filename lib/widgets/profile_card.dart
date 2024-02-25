import 'package:flutter/material.dart';
import 'package:hw_10/utils/colors.dart';
import 'package:hw_10/utils/fonts.dart';
import 'package:hw_10/widgets/qr_avatar.dart';
import 'package:hw_10/widgets/social_media_bar.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.name,
    required this.job,
    required this.image,
  });
  final String name;
  final String job;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QRAvatar(
          image: image,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: const TextStyle(
              color: mainTextColor,
              fontFamily: osFont,
              fontSize: 12,
              fontWeight: FontWeight.w600),
        ),
        Text(
          job,
          style: const TextStyle(
              color: secondaryTextColor,
              fontFamily: interFont,
              fontSize: 10,
              fontWeight: FontWeight.w300),
        ),
        const SizedBox(
          height: 16,
        ),
        SocialMediaBar(
          icons: [
            InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(40),
                child: Image.asset("assets/icons/facebook.png")),
            InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(40),
                child: Image.asset("assets/icons/instagram.png")),
            InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(40),
                child: Image.asset("assets/icons/twitter.png")),
          ],
        ),
      ],
    );
  }
}
