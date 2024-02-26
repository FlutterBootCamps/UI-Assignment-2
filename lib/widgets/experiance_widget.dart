import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:profile_application/constant/colors.dart';
import 'package:profile_application/widgets/container_widget.dart';

class ExperianceWidget extends StatelessWidget {
  ExperianceWidget({
    super.key,
  });
  List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "UX Designer",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: StepperText("@uiux_agency | 2020-2023"),
        iconWidget: CircleWidget()),
    StepperData(
        title: StepperText(
          "Graphic Designer",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: StepperText("@uiux_agency | 2020-2023"),
        iconWidget: CircleWidget()),
    StepperData(
        title: StepperText(
          "Marketing Manager",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: StepperText("@uiux_agency | 2020-2023"),
        iconWidget: CircleWidget()),
    StepperData(
        title: StepperText(
          "Maths Tutor",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: StepperText("@uiux_agency | 2020-2023"),
        iconWidget: CircleWidget()),
    StepperData(
        title: StepperText(
          "Business Manager",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: StepperText("@uiux_agency | 2020-2023"),
        iconWidget: CircleWidget()),
    StepperData(
        title: StepperText(
          "UX Designer",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: StepperText("@uiux_agency | 2020-2023"),
        iconWidget: CircleWidget()),
  ];
  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
        cntainerChild: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Experience",
              style: TextStyle(
                  color: whiteColor,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
                width: 40, child: Divider(thickness: 1, color: orangeColor)),
            AnotherStepper(
              stepperList: stepperData,
              stepperDirection: Axis.vertical,
              verticalGap: 25,
              iconWidth:
                  20, // Height that will be applied to all the stepper icons
              iconHeight:
                  20, // Width that will be applied to all the stepper icons
            )
          ],
        ),
      ),
    ));
  }
}

class CircleWidget extends StatelessWidget {
  const CircleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: containerColor, width: 2)),
      ),
    );
  }
}
