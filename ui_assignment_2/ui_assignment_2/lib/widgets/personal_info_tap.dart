import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_assignment_2/constant/colors.dart';
import 'package:ui_assignment_2/extensions/screen_handler.dart';
import 'package:ui_assignment_2/widgets/contact_info.dart';

class PersonalInfoTap extends StatelessWidget {
  const PersonalInfoTap({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            decoration: const BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            width: context.getWidth(),
            height: context.getHeight() * 0.35,
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "About Me",
                  style: TextStyle(
                      color: labelName,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const SizedBox(
                    width: 50,
                    child: Divider(
                      color: tabColor,
                    )),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Ayesha Bazmi is a results-driven Marketing Manager with a passion for leveraging innovative strategies to drive brand growth and customer engagement in the ever-evolving digital landscape.",
                  style:
                      TextStyle(color: labelName.withOpacity(0.8), fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Feel free to reach me out for any specific queries.",
                  style:
                      TextStyle(color: labelName.withOpacity(0.8), fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            width: context.getWidth(),
            height: context.getHeight() * 0.35,
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Contact Here",
                  style: TextStyle(
                      color: labelName,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const SizedBox(
                    width: 50,
                    child: Divider(
                      color: tabColor,
                    )),
                const SizedBox(
                  height: 15,
                ),
                ContactInfo(
                  icons: Icons.phone,
                  text: '+92 1234567890',
                ),
                ContactInfo(
                  icons: Icons.mail,
                  text: "ayeshabazmi@gmail.com",
                ),
                ContactInfo(
                  icons: Icons.location_on_sharp,
                  text:
                      "Street 2, house #05, Motarway Route Road Islamabad, Pakistan",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
