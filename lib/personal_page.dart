import 'package:flutter/material.dart';
import 'package:hw_2ui/constant/color.dart';
import 'package:hw_2ui/extension/assistant.dart';
import 'package:hw_2ui/widgets/dot.dart';
import 'package:hw_2ui/widgets/experience.dart';
import 'package:hw_2ui/widgets/personal_info.dart';

class PersonalPage extends StatelessWidget {

  const PersonalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: sColor, 
        appBar: PreferredSize(
          preferredSize: Size(context.getW(context), context.getH(context) / 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              // Avatar and QR code icon stack
              Stack(
                clipBehavior: Clip.none,
                children: [
                  // CircleAvatar for the main profile image
                  CircleAvatar(
                    radius: 47,
                    backgroundColor: Colors.white,
                    child: Image.asset('image/Ellipse 1 (1).png'),
                  ),
                  Positioned(
                    top: 10,
                    right: -7,
                    child: Image.asset('image/icon _qr code outline_.png'),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // User name text
              const Text(
                "Ayesha Bazmi",
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xfffcfcfc),
                ),
              ),
              // Job title text
              const Text(
                "Marketing Manager",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 10,
                  color: tabColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('image/icon _logo facebook_.png'),
                  const SizedBox(
                    width: 25,
                  ),
                  Image.asset('image/icon _logo instagram_.png'),
                  const SizedBox(
                    width: 25,
                  ),
                  Image.asset('image/icon _logo twitter_.png'),
                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Column(
            children: [
              // TabBar for navigation
              TabBar(
                dividerColor: sColor,
                labelColor: const Color(0xffFF9A71),
                tabAlignment: TabAlignment.center,
                labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                labelStyle: const TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 10,
                  color: tabColor,
                ),
                indicator: DotIndicator(), // Custom DotIndicator for the tabs
                tabs: const [
                  Tab(
                    text: "Personal Info",
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
              // Expanded TabBarView to display the content of each tab
              const Expanded(
                child: TabBarView(
                  children: [
                    PersonalInfo(), // Content for "Personal Info" tab
                    Experience(), // Content for "Experience" tab
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}