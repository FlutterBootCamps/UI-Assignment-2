import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:hw_10_alaa/constant/color.dart';
import 'package:hw_10_alaa/constant/space.dart';
import 'package:hw_10_alaa/helper/screen_extention.dart';
import 'package:hw_10_alaa/widgets/button_widget.dart';
import 'package:hw_10_alaa/widgets/container_decoration_widget.dart';
import 'package:hw_10_alaa/widgets/heading_text_widget.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    List<StepperData> stepperData = [
      StepperData(
          title: StepperText(
            "UX Designer",
            textStyle: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
              color: Color(0xffFCFCFC),
            ),
          ),
          subtitle: StepperText("@uiux_agency | 2020-2023"),
          iconWidget: Container(
              padding: const EdgeInsets.all(1),
              decoration: const BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: grey, width: 2),
                  shape: BoxShape.circle,
                  color: const Color(0xffF5F5F5),
                ),
              ) //const Icon(Icons.looks_one, color: Colors.white),
              )),
      StepperData(
          title: StepperText(
            "Graphic Designer",
            textStyle: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
              color: Color(0xffFCFCFC),
            ),
          ),
          subtitle: StepperText("@uiux_agency | 2020-2023"),
          iconWidget: Container(
              padding: const EdgeInsets.all(1),
              decoration: const BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: grey, width: 2),
                  shape: BoxShape.circle,
                  color: const Color(0xffF5F5F5),
                ),
              ) //const Icon(Icons.looks_one, color: Colors.white),
              )),
      StepperData(
          title: StepperText(
            "Marketing Manager",
            textStyle: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
              color: Color(0xffFCFCFC),
            ),
          ),
          subtitle: StepperText("@uiux_agency | 2020-2023"),
          iconWidget: Container(
              padding: const EdgeInsets.all(1),
              decoration: const BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: grey, width: 2),
                  shape: BoxShape.circle,
                  color: const Color(0xffF5F5F5),
                ),
              ) //const Icon(Icons.looks_one, color: Colors.white),
              )),
      StepperData(
          title: StepperText(
            "Maths Tutor",
            textStyle: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
              color: Color(0xffFCFCFC),
            ),
          ),
          subtitle: StepperText("@uiux_agency | 2020-2023"),
          iconWidget: Container(
              padding: const EdgeInsets.all(1),
              decoration: const BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: grey, width: 2),
                  shape: BoxShape.circle,
                  color: const Color(0xffF5F5F5),
                ),
              ) //const Icon(Icons.looks_one, color: Colors.white),
              )),
      StepperData(
          title: StepperText(
            "Business Manager",
            textStyle: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
              color: Color(0xffFCFCFC),
            ),
          ),
          subtitle: StepperText("@uiux_agency | 2020-2023"),
          iconWidget: Container(
              padding: const EdgeInsets.all(1),
              decoration: const BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: grey, width: 2),
                  shape: BoxShape.circle,
                  color: const Color(0xffF5F5F5),
                ),
              ) //const Icon(Icons.looks_one, color: Colors.white),
              )),
      StepperData(
          title: StepperText(
            "UX Designer",
            textStyle: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
              color: Color(0xffFCFCFC),
            ),
          ),
          subtitle: StepperText("@uiux_agency | 2020-2023"),
          iconWidget: Container(
              padding: const EdgeInsets.all(1),
              decoration: const BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: grey, width: 2),
                  shape: BoxShape.circle,
                  color: const Color(0xffF5F5F5),
                ),
              )
              // const Icon(Icons.looks_one, color: Colors.white),
              )),
    ];

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(
              width: context.getWidth() * .85,
              height: context.getHeight() * .52,
              child: ContainerDecoration(
                childContainer: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const HeadingTitle(title: "Experience"),
                        height12,
                        AnotherStepper(
                          stepperList: stepperData,
                          stepperDirection: Axis.vertical,
                          verticalGap: 25,
                          iconWidth:
                              15, // Height that will be applied to all the stepper icons
                          iconHeight:
                              15, // Width that will be applied to all the stepper icons
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ButtonWidget(),
          ],
        ),
      ),
    );
  }
}
