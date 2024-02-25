import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:hw_10/helpers/extensions/screen_helper.dart';
import 'package:hw_10/utils/colors.dart';
import 'package:hw_10/utils/fonts.dart';

class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(context),
      padding: const EdgeInsets.only(left: 19, top: 25, bottom: 16),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Experience",
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
          AnotherStepper(
              verticalGap: 45,
              stepperList: [
                StepperData(
                  title: StepperText("UX Designer",
                      textStyle: const TextStyle(
                          color: whiteColor, fontFamily: osFont, fontSize: 11)),
                  subtitle: StepperText("@uiux_agency | 2020-2023",
                      textStyle: const TextStyle(
                          color: smallTextColor,
                          fontFamily: osFont,
                          fontSize: 9,
                          fontWeight: FontWeight.w300)),
                  iconWidget: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: noColor,
                            border: Border.all(
                              color: whiteColor,
                              width: 0.5,
                              strokeAlign: BorderSide.strokeAlignInside,
                            )),
                      ),
                      const CircleAvatar(
                        radius: 6,
                        backgroundColor: whiteColor,
                      ),
                    ],
                  ),
                ),
                StepperData(
                  title: StepperText("Graphic Designer",
                      textStyle: const TextStyle(
                          color: whiteColor, fontFamily: osFont, fontSize: 11)),
                  subtitle: StepperText("@uiux_agency | 2020-2023",
                      textStyle: const TextStyle(
                          color: smallTextColor,
                          fontFamily: osFont,
                          fontSize: 9,
                          fontWeight: FontWeight.w300)),
                  iconWidget: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: noColor,
                            border: Border.all(
                              color: whiteColor,
                              width: 0.5,
                              strokeAlign: BorderSide.strokeAlignInside,
                            )),
                      ),
                      const CircleAvatar(
                        radius: 6,
                        backgroundColor: whiteColor,
                      ),
                    ],
                  ),
                ),
                StepperData(
                  title: StepperText("Marketing Manager",
                      textStyle: const TextStyle(
                          color: whiteColor, fontFamily: osFont, fontSize: 11)),
                  subtitle: StepperText("@uiux_agency | 2020-2023",
                      textStyle: const TextStyle(
                          color: smallTextColor,
                          fontFamily: osFont,
                          fontSize: 9,
                          fontWeight: FontWeight.w300)),
                  iconWidget: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: noColor,
                            border: Border.all(
                              color: whiteColor,
                              width: 0.5,
                              strokeAlign: BorderSide.strokeAlignInside,
                            )),
                      ),
                      const CircleAvatar(
                        radius: 6,
                        backgroundColor: whiteColor,
                      ),
                    ],
                  ),
                ),
                StepperData(
                  title: StepperText("Math Tutor",
                      textStyle: const TextStyle(
                          color: whiteColor, fontFamily: osFont, fontSize: 11)),
                  subtitle: StepperText("@uiux_agency | 2020-2023",
                      textStyle: const TextStyle(
                          color: smallTextColor,
                          fontFamily: osFont,
                          fontSize: 9,
                          fontWeight: FontWeight.w300)),
                  iconWidget: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: noColor,
                          border: Border.all(
                            color: whiteColor,
                            width: 0.5,
                            strokeAlign: BorderSide.strokeAlignInside,
                          ),
                        ),
                      ),
                      const CircleAvatar(
                        radius: 6,
                        backgroundColor: whiteColor,
                      ),
                    ],
                  ),
                ),
                StepperData(
                  title: StepperText("Bussniess Manager",
                      textStyle: const TextStyle(
                          color: whiteColor, fontFamily: osFont, fontSize: 11)),
                  subtitle: StepperText("@uiux_agency | 2020-2023",
                      textStyle: const TextStyle(
                          color: smallTextColor,
                          fontFamily: osFont,
                          fontSize: 9,
                          fontWeight: FontWeight.w300)),
                  iconWidget: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: noColor,
                            border: Border.all(
                              color: whiteColor,
                              width: 0.5,
                              strokeAlign: BorderSide.strokeAlignInside,
                            )),
                      ),
                      const CircleAvatar(
                        radius: 6,
                        backgroundColor: whiteColor,
                      ),
                    ],
                  ),
                ),
                StepperData(
                  title: StepperText("UX Designer",
                      textStyle: const TextStyle(
                          color: whiteColor, fontFamily: osFont, fontSize: 11)),
                  subtitle: StepperText("@uiux_agency | 2020-2023",
                      textStyle: const TextStyle(
                          color: smallTextColor,
                          fontFamily: osFont,
                          fontSize: 9,
                          fontWeight: FontWeight.w300)),
                  iconWidget: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: noColor,
                            border: Border.all(
                              color: whiteColor,
                              width: 0.5,
                              strokeAlign: BorderSide.strokeAlignInside,
                            )),
                      ),
                      const CircleAvatar(
                        radius: 6,
                        backgroundColor: whiteColor,
                      ),
                    ],
                  ),
                ),
              ],
              stepperDirection: Axis.vertical)
        ],
      ),
    );
  }
}
