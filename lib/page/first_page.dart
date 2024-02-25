import 'package:flutter/material.dart';
import 'package:ui_assignment_2/page/page_2.dart';
import 'package:ui_assignment_2/page/page_3.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 37, 42, 64),
            body: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      children: [
                        Stack(children: [
                          Container(
                            width: 120,
                            child: Image.asset("image/Ellipse 1.png"),
                          ),
                          Positioned(
                            top: 25,
                            left: 90,
                            child: Image.asset(
                                "image/🦆 icon _qr code outline_.png"),
                          ),
                        ]),
                        const Text(
                          "Ayesha Bazmi",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(252, 252, 252, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          "Marketing Manager",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(245, 245, 245, 1),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Image.asset("image/Frame 3.png")
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: TabBar(
                    labelColor: Color.fromRGBO(255, 154, 113, 1),
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Color.fromRGBO(245, 245, 245, 1),
                    indicatorPadding: EdgeInsets.fromLTRB(10, 0, 105, 0),
                    indicator: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 154, 113, 1),
                    ),
                    dividerColor: Colors.transparent,
                    tabs: [
                      Tab(
                        text: " Personal Info",
                      ),
                      Tab(
                        text: "Experience",
                      ),
                      Tab(
                        text: "Top skills",
                      ),
                      Tab(
                        text: "Reviews",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const TabBarView(
                    children: [
                      PersonalInfo(),
                      ExperiencePage(),
                      PersonalInfo(),
                      PersonalInfo(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 154, 113, 1),
                            borderRadius: BorderRadius.circular(30)),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 30,
                        child: const Center(
                            child: Text(
                          "Hire Me",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.82)),
                        ))))
              ],
            )),
      ),
    );
  }
}
