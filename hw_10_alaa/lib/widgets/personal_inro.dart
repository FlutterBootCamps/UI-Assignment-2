import 'package:flutter/material.dart';
import 'package:hw_10_alaa/constant/space.dart';
import 'package:hw_10_alaa/helper/screen_extention.dart';
import 'package:hw_10_alaa/widgets/button_widget.dart';
import 'package:hw_10_alaa/widgets/container_decoration_widget.dart';
import 'package:hw_10_alaa/widgets/heading_text_widget.dart';
import 'package:hw_10_alaa/widgets/subtitle_widget.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  width: context.getWidth() * .85,
                  height: context.getHeight() * .22,
                  child: const ContainerDecoration(
                    childContainer: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HeadingTitle(title: "About Me"),
                        Subtitle(
                            subtitle:
                                "Ayesha Bazmi is a results-driven Marketing Manager with a passion for leveraging innovative strategies to drive brand growth and customer engagement in the ever-evolving digital landscape."),
                        Subtitle(
                            subtitle:
                                "Feel free to reach me out for any specific queries."),
                      ],
                    ),
                  ),
                ),
                height24,
                SizedBox(
                  width: context.getWidth() * .85,
                  height: context.getHeight() * .28,
                  child: ContainerDecoration(
                    childContainer: Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const HeadingTitle(title: "Contact Here"),
                          height12,
                          Row(
                            children: [
                              Image.asset("asset/images/icon_phone.png"),
                              width24,
                              const Subtitle(subtitle: "+92 1234567890")
                            ],
                          ),
                          height8,
                          Row(
                            children: [
                              Image.asset("asset/images/icon_email.png"),
                              width24,
                              const Subtitle(subtitle: "ayeshabazmi@gmail.com")
                            ],
                          ),
                          height8,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset("asset/images/icon _location.png"),
                              width24,
                              const Flexible(
                                child: Subtitle(
                                    subtitle:
                                        "Street 2, house #05, Motarway Route Road Islamabad, Pakistan"),
                              ),
                            ],
                          ),
                          height24,
                        ],
                      ),
                    ),
                  ),
                ),
                const ButtonWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
