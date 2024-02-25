import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:ui_assignment_2/component/custom_text.dart';
import 'package:ui_assignment_2/component/list_time_line.dart';
import 'package:ui_assignment_2/page/page_2.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          height: MediaQuery.of(context).size.height*0.55,
          width: MediaQuery.of(context).size.width * 0.9,
          color: Color.fromRGBO(61, 63, 84, 1),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          customText(
              text: "Experienc",
              color: Color.fromRGBO(255, 255, 255, 0.82),
              weight: FontWeight.w700,
              size: 11,
              height: 1),
                          SizedBox(
              width: 40,
              child: Divider(
                endIndent: 1,
                color: Color.fromRGBO(255, 154, 113, 1),
                indent: 1,
                thickness: 0.5,
              )),
                          Column(
            children: [
              AnotherStepper(
                stepperList: stepperData,
                stepperDirection: Axis.vertical,
                iconWidth: 20,
                iconHeight: 20,
                inActiveBarColor: Colors.grey,
                verticalGap: 15,
                barThickness: 1,
              ),
            ],
                          ),
                        ]),
          ),
        ),
      ],
    );
  }
}
