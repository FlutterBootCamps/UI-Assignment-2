import 'package:flutter/material.dart';
import 'package:hw_2ui/constant/color.dart';
import 'package:hw_2ui/extension/assistant.dart';
import 'package:hw_2ui/widgets/button.dart';
import 'package:hw_2ui/widgets/time_line.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container for the "Experience" section
        Container(
          width: context.getW(context),
          height: 460,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: cColor, 
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section heading "Experience"
              const Text(
                "Experience",
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
                height: 10,
              ),
              // Timeline entries using TimeLine widget
              const TimeLine(
                isFirst: true,
                headerTitle: "UX Designer",
              ),
              const TimeLine(
                isFirst: false,
                headerTitle: "Graphic Designer",
              ),
              const TimeLine(
                isFirst: false,
                headerTitle: "Marketing Manager",
              ),
              const TimeLine(
                isFirst: false,
                headerTitle: "Maths Tutor",
              ),
              const TimeLine(
                isFirst: false,
                headerTitle: "Business Manager",
              ),
              const TimeLine(
                isFirst: false,
                headerTitle: "UX Designer",
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        // ButtonWidget for additional actions
        const ButtonWidget(),
      ],
    );
  }
}