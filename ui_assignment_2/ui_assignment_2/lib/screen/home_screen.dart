import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_assignment_2/constant/colors.dart';
import 'package:ui_assignment_2/extensions/dot.dart';
import 'package:ui_assignment_2/extensions/screen_handler.dart';

import '../widgets/experience_tap.dart';
import '../widgets/personal_info_tap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: DefaultTabController(
        length: 4,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: context.getWidth(),
                    height: context.getHeight() * 0.22,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 150,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 50,
                                  child: Image.asset(
                                      "assets/images/Profile_image.png")),
                              const Positioned(
                                  right: 20,
                                  bottom: 60,
                                  child: Icon(
                                    Icons.qr_code_outlined,
                                    color: Color(0xffFF9A71),
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Ayesha Bazmi",
                          style: TextStyle(
                              color: labelName, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Marketing Manager",
                          style: TextStyle(color: labelWork.withOpacity(0.7)),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          width: context.getWidth() * 0.30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.facebook,
                                color: Colors.white,
                                size: 20,
                              ),
                              SvgPicture.asset(
                                "assets/icons/instagram.svg",
                                width: 20,
                              ),
                              SvgPicture.asset(
                                "assets/icons/x.svg",
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    width: context.getWidth(),
                    child: TabBar(
                        dividerColor: background,
                        labelColor: tabColor,
                        isScrollable: true,
                        tabAlignment: TabAlignment.center,
                        unselectedLabelColor: labelName.withOpacity(0.7),
                        indicatorColor: tabColor,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: DotIndicator(color: tabColor, radius: 2),
                        tabs: const [
                          Tab(
                            child: Text("Personal Info"),
                          ),
                          Tab(
                            child: Text("Experience"),
                          ),
                          Tab(
                            child: Text("Top skills"),
                          ),
                          Tab(
                            child: Text("Reviews"),
                          ),
                        ]),
                  ),
                  SizedBox(
                    width: context.getWidth(),
                    height: context.getWidth(),
                    child: TabBarView(children: [
                      const PersonalInfoTap(),
                      ExperienceTap(),
                      Image.network(
                          "https://www.hjaltland.org.uk/site/assets/files/1066/preventive-maintenance-service-construction-worker-business-png-favpng-s8tutzjvzsdaptmpructy83c7.jpg"),
                      Image.network(
                          "https://www.hjaltland.org.uk/site/assets/files/1066/preventive-maintenance-service-construction-worker-business-png-favpng-s8tutzjvzsdaptmpructy83c7.jpg"),
                    ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minWidth: context.getWidth(),
                    height: context.getHeight() * 0.08,
                    color: tabColor,
                    child: const Text(
                      "Hire Me",
                      style: TextStyle(
                          color: labelName,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  
}
