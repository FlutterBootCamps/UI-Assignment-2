import 'package:flutter/material.dart';
import 'package:profile_application/constant/colors.dart';

class ContactWidget extends StatelessWidget {
  ContactWidget({super.key, required this.img, required this.textContact});
  String img;
  String textContact;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(img),
        SizedBox(
          width: 20,
        ),
        Text(
          textContact,
          style: TextStyle(color: textGreyColor, fontSize: 12),
        ),
        SizedBox(
          height: 45,
        ),
      ],
    );
  }
}
