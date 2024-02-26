import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:profile_application/constant/colors.dart';
import 'package:profile_application/widgets/container_widget.dart';
import 'package:profile_application/widgets/cotact_widget.dart';
import 'package:profile_application/widgets/experiance_widget.dart';
import 'package:profile_application/widgets/profile_widget.dart';

class PersonalInfoPage extends StatefulWidget {
  PersonalInfoPage({super.key});

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  int index = 0;
  List<String> tabBar = [
    "Personal Info",
    "Experience",
    "Top skills",
    "Reviews"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: Duration.zero,
      length: 4,
      child: Scaffold(
        backgroundColor: blueColor,
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 25, right: 25),
            child: Column(
              children: [
                SizedBox(
                  width: 115,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/person.png',
                        width: 110,
                        height: 110,
                      ),
                      Positioned(
                          right: 0,
                          top: 12,
                          child: Image.asset(
                            'assets/images/qr_icon.png',
                            width: 30,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Ayesha Bazmi",
                  style: TextStyle(
                      fontSize: 16,
                      color: whiteColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Marketing Manager",
                  style: TextStyle(fontSize: 14, color: whiteColor),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.facebook,
                        color: whiteColor,
                      ),
                      Iconify(
                        Bi.instagram,
                        color: whiteColor,
                      ),
                      Iconify(
                        Bi.twitter,
                        color: whiteColor,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 35,
                  child: TabBar(
                      labelPadding: EdgeInsets.symmetric(horizontal: 8),
                      labelColor: orangeColor,
                      dividerColor: blueColor,
                      unselectedLabelColor: whiteColor,
                      indicatorColor: Colors.transparent,
                      onTap: (value) {
                        setState(() {
                          index = value;
                        });
                      },
                      tabs: [
                        Tab(
                          text: (index == 0)
                              ? "•  Personal Info"
                              : "Personal Info",
                        ),
                        Tab(
                          text: (index == 1) ? "•  Experience" : "Experience",
                        ),
                        Tab(
                          text: (index == 2) ? "•  Top Skills" : "Top Skills",
                        ),
                        Tab(
                          text: (index == 3) ? "•  Reviews" : "Reviews",
                        ),
                      ]),
                ),
                Expanded(
                  child: TabBarView(children: [
                    ProfileInfo(),
                    ExperianceWidget(),
                    Container(),
                    Container()
                  ]),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Hire Me",
                      style: TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: orangeColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: Size(
                          double.infinity,
                          53,
                        ))),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
