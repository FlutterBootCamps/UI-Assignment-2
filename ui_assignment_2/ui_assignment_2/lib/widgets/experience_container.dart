import 'package:flutter/cupertino.dart';
import 'package:ui_assignment_2/constant/colors.dart';
import 'package:ui_assignment_2/extensions/screen_handler.dart';

class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer(
      {super.key, required this.title, required this.text});
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth() * 0.5,
      height: 100,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(top: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: labelName, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          Text(
            text,
            style: TextStyle(color: labelName.withOpacity(0.7)),
          )
        ],
      ),
    );
  }
}
