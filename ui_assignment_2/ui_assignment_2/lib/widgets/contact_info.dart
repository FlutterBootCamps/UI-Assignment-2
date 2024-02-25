import 'package:flutter/cupertino.dart';
import 'package:ui_assignment_2/constant/colors.dart';

class ContactInfo extends StatelessWidget {
  ContactInfo({super.key, required this.icons, required this.text});
  final IconData icons;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Icon(
            icons,
            size: 30,
            color: labelName,
          ),
          SizedBox(
            width: 40,
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: labelWork, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
