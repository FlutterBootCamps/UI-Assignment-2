import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_assignment_2/constant/colors.dart';
import 'package:ui_assignment_2/extensions/screen_handler.dart';
import 'package:ui_assignment_2/widgets/experience_container.dart';

class ExperienceTap extends StatelessWidget {
  const ExperienceTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      width: context.getWidth(),
      height: context.getHeight() * 0.35,
      padding: const EdgeInsets.all(32),
      child: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Experience",
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
                EasyStepper(
                  alignment: Alignment.centerLeft,
                  activeStep: 6,
                  stepShape: StepShape.circle,
                  lineStyle: const LineStyle(
                    lineSpace: 0,
                    lineThickness: 1,
                    lineLength: 80,
                    lineType: LineType.normal,
                    unreachedLineType: LineType.normal,
                    finishedLineColor: Color(0xffD9D9D9),
                  ),
                  stepRadius: 15,
                  finishedStepBorderColor: const Color(0xffD9D9D9),
                  finishedStepTextColor: const Color(0xffD9D9D9),
                  finishedStepBackgroundColor: const Color(0xffD9D9D9),
                  activeStepIconColor: const Color(0xffD9D9D9),
                  showLoadingAnimation: false,
                  direction: Axis.vertical,
                  showTitle: false,
                  steps: [
                    EasyStep(
                      customStep: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: containerColor,
                                  width: 4,
                                  style: BorderStyle.solid)),
                        ),
                      ),
                    ),
                    EasyStep(
                      customStep: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: containerColor,
                                  width: 4,
                                  style: BorderStyle.solid)),
                        ),
                      ),
                    ),
                    EasyStep(
                      customStep: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: containerColor,
                                  width: 4,
                                  style: BorderStyle.solid)),
                        ),
                      ),
                    ),
                    EasyStep(
                      customStep: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: containerColor,
                                  width: 4,
                                  style: BorderStyle.solid)),
                        ),
                      ),
                    ),
                    EasyStep(
                      customStep: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: containerColor,
                                  width: 4,
                                  style: BorderStyle.solid)),
                        ),
                      ),
                    ),
                    EasyStep(
                      customStep: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: containerColor,
                                  width: 4,
                                  style: BorderStyle.solid)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ExperienceContainer(
                  title: 'UX Designer',
                  text: '@uiux_agency | 2020-2023',
                ),
                ExperienceContainer(
                  title: 'Graphic Designer',
                  text: '@uiux_agency | 2020-2023',
                ),
                ExperienceContainer(
                  title: 'Marketing Manager',
                  text: '@uiux_agency | 2020-2023',
                ),
                ExperienceContainer(
                  title: 'Maths Tutor',
                  text: '@uiux_agency | 2020-2023',
                ),
                ExperienceContainer(
                  title: 'Business Manager',
                  text: '@uiux_agency | 2020-2023',
                ),
                ExperienceContainer(
                  title: 'UX Designer',
                  text: '@uiux_agency | 2020-2023',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
