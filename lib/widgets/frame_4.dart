
import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_button.dart';

class Frame4 extends StatelessWidget {
  const Frame4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Container(
          height: 95,
          width: 95,
          // check of container if radius
    
          // decoration: BoxDecoration(
          //   color: Colors.amber,
          //   borderRadius: BorderRadius.all(Radius.circular(80))
          // ),
          child: Image.asset(
            'assets/Ellipse 1.png',
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Ayesha Bazmi",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFCFCFC)),
              )
            ],
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Marketing Manager",
              style: TextStyle(fontSize: 10, color: Color(0xffFCFCFC)),
            )
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialMediaButton.facebook(
              color: Colors.white,
            ),
            SocialMediaButton.instagram(
              color: Colors.white,
            ),
            SocialMediaButton.twitter(
              color: Colors.white,
            ),
          ],
        )
      ],
    );
  }
}