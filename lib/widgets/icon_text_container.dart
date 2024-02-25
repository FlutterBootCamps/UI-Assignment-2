import 'package:flutter/material.dart';
import 'package:hw_10/utils/colors.dart';
import 'package:hw_10/utils/fonts.dart';

class IconTextContainer extends StatelessWidget {
  const IconTextContainer({
    super.key,
    required this.icon,
    required this.text,
  });
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(icon),
          const SizedBox(
            width: 24,
          ),
          Flexible(
              child: Text(
            text,
            style: const TextStyle(
                color: smallTextColor,
                fontFamily: osFont,
                fontSize: 10,
                overflow: TextOverflow.fade),
          )),
        ],
      ),
    );
  }
}
