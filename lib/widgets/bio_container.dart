import 'package:flutter/material.dart';
import 'package:hw_10/helpers/extensions/screen_helper.dart';
import 'package:hw_10/utils/colors.dart';
import 'package:hw_10/utils/fonts.dart';

class BioContainer extends StatelessWidget {
  const BioContainer({
    super.key,
    required this.headerText,
    required this.subText,
  });

  final String headerText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(context),
      height: 182,
      padding: const EdgeInsets.only(left: 20, right: 32, top: 25, bottom: 36),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headerText,
            style: const TextStyle(
                color: whiteColor,
                fontFamily: osFont,
                fontSize: 11,
                fontWeight: FontWeight.bold),
          ),
          const Divider(
            color: orangeColor,
            thickness: 0.3,
            endIndent: 240,
            height: 1,
          ),
          const SizedBox(
            height: 19,
          ),
          Text(
            subText,
            style: const TextStyle(
                color: smallTextColor, fontFamily: osFont, fontSize: 10),
          )
        ],
      ),
    );
  }
}
