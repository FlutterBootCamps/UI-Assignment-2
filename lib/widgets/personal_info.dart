import 'package:flutter/material.dart';
import 'package:hw_2ui/constant/color.dart';
import 'package:hw_2ui/extension/assistant.dart';
import 'package:hw_2ui/widgets/button.dart';
import 'package:hw_2ui/widgets/contact.dart';

class PersonalInfo extends StatelessWidget {

  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container for the "About Me" section
        Container(
          height: 182,
          width: context.getW(context),
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: cColor, 
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section heading "About Me"
              const Text(
                "About Me",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Color(0xfffcfcfc)),
              ),
              Container(
                width: 35,
                height: 0.5,
                color: const Color(0xffff9a71),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Ayesha Bazmi is a results-driven Marketing Manager with a passion for leveraging innovative strategies to drive brand growth and customer engagement in the ever-evolving digital landscape.",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 10,
                    color: Color(0xfffcfcfc)),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Feel free to reach me out for any specific queries.",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 10,
                    color: Color(0xfffcfcfc)),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        // Container for the "Contact Here" section
        Container(
          height: 231,
          width: context.getW(context),
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: cColor, 
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section heading "Contact Here"
              const Text(
                "Contact Here",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Color(0xfffcfcfc)),
              ),
              Container(
                width: 35,
                height: 0.5,
                color: const Color(0xffff9a71),
              ),
              const SizedBox(
                height: 20,
              ),
              // Contact information using ContactWidget
              ContactWidget(
                icon: Icons.call,
                text: "+92 1234567890",
              ),
              ContactWidget(
                icon: Icons.mail,
                text: "ayeshabazmi@gmail.com",
              ),
              ContactWidget(
                icon: Icons.location_on,
                text:
                    "Street 2, house #05, Motarway Route Road Islamabad, Pakistan",
              ),
            ],
          ),
        ),
        // Spacer
        SizedBox(
          height: 20,
        ),
        // ButtonWidget for additional actions
        ButtonWidget(),
      ],
    );
  }
}