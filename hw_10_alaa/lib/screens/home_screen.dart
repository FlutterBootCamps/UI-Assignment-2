import 'package:flutter/material.dart';
import 'package:hw_10_alaa/constant/color.dart';
import 'package:hw_10_alaa/constant/space.dart';
import 'package:hw_10_alaa/helper/screen_extention.dart';
import 'package:hw_10_alaa/widgets/custom_tabbar_indicator.dart';
import 'package:hw_10_alaa/widgets/experience.dart';
import 'package:hw_10_alaa/widgets/personal_inro.dart';
import 'package:hw_10_alaa/widgets/social_media_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
 
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: black,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(300),
          child: AppBar(
            backgroundColor: greybg,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Column(
                children: [
                  Center(
                    child: SizedBox(
                      width: context.getWidth() * 0.3,
                      height: context.getWidth() * .25,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Stack(
                          children: [
                            SizedBox(
                              width: context.getWidth() * .25,
                              height: context.getWidth() * .25,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(120),
                                child: Container(
                                  alignment: Alignment.center,
                                  color: white,
                                  child: Image.network(
                                    "https://s3-alpha-sig.figma.com/img/8546/1542/23926a9ad80b71e4cd1466b5aa6cb96d?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=m96fphiBccNNbmVRi2VRecP3JzR02QbcULcgXkuYPUxiHCrnwgExPJFvxZyusXfHs1YyRjfy7Cri~kgmBZzUklUhEWBnYEvAH92FeI6NxeU9fjkYcE1IHtMztGYfmI47bLs2VvkVPE8Vr~HdgiCknJ4DL6hBgv9LE6gM4Znjk2e-fdPggWX0jpXxIVNsSHDC3NpMEUko3L-6ycQlWOJU4VvVk1trLBIn21gN3~nE4JMLihHv8hRdh23z2gcM66E0F0iLFGeElWjhPe31Fe3-GI3cxPKAqEm62qS5-Vcr4QmlAXepIDJTH8tYhM1e46wQ-IV9tlmKcc16ekrQObrv9A__",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 80,
                              top: 12,
                              child: Image.asset(
                                "asset/images/QR_icon.png",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  height6,
                  const Text(
                    "Ayesha Bazmi",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: white),
                  ),
                  const Text(
                    "Marketing Manager",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        color: lightGrey),
                  ),
                  height12,
                  const SocialMedia(),
                ],
              ),
            ),
            bottom: const TabBar(
              indicator: CustomTabBarDotIndicator(),
              indicatorSize: TabBarIndicatorSize.tab,
              // indicatorPadding: ,
              tabAlignment: TabAlignment.center,
              indicatorColor: greybg,
              dividerColor: greybg,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 10, color: orange),
              labelPadding: EdgeInsets.symmetric(horizontal: 15),
              unselectedLabelStyle: TextStyle(
                  color: lightGrey, fontSize: 10, fontWeight: FontWeight.w400),
              tabs: [
                Tab(text: "Personal Info"),
                Tab(text: "Experience"),
                Tab(text: "Top skills"),
                Tab(text: "Reviews"),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            PersonalInfo(),
            Experience(),
            Center(
              child: Text(
                "Top skills",
                style: TextStyle(color: white),
              ),
            ),
            Center(
              child: Text(
                "Reviews",
                style: TextStyle(color: white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
