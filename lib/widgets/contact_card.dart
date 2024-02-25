import 'package:flutter/material.dart';
import 'package:hw_10/helpers/extensions/screen_helper.dart';
import 'package:hw_10/utils/colors.dart';
import 'package:hw_10/utils/fonts.dart';
import 'package:hw_10/widgets/icon_text_container.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.number,
    required this.email,
    required this.address,
  });

  final String number;
  final String email;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(context),
      height: 231,
      padding: const EdgeInsets.only(
        left: 18,
        top: 27,
        bottom: 40,
      ),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Contact Here",
            style: TextStyle(
                color: whiteColor,
                fontFamily: osFont,
                fontSize: 11,
                fontWeight: FontWeight.bold),
          ),
          const Divider(
            color: orangeColor,
            thickness: 0.3,
            endIndent: 272,
            height: 1,
          ),
          const SizedBox(
            height: 30,
          ),
          IconTextContainer(
            icon: "assets/icons/phone.png",
            text: number,
          ),
          const SizedBox(
            height: 22,
          ),
          IconTextContainer(
            icon: "assets/icons/mail.png",
            text: email,
          ),
          const SizedBox(
            height: 22,
          ),
          IconTextContainer(
            icon: "assets/icons/location.png",
            text: address,
          ),
        ],
      ),
    );
  }
}
