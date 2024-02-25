import 'package:flutter/material.dart';
import 'package:hw_10/utils/colors.dart';
import 'package:hw_10/utils/fonts.dart';

class ReviewsContainer extends StatelessWidget {
  const ReviewsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "This is Reviews Tab",
          style: TextStyle(
              color: smallTextColor,
              fontFamily: osFont,
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 400,
        ),
      ],
    );
  }
}

