import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hw_10/bloc/profile_info_bloc.dart';
import 'package:hw_10/data_layer/home_data_layer.dart';
import 'package:hw_10/helpers/extensions/screen_helper.dart';
import 'package:hw_10/utils/colors.dart';
import 'package:hw_10/utils/fonts.dart';
import 'package:hw_10/widgets/profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var getIt = GetIt.I.get<HomeData>();
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
          padding: const EdgeInsets.only(
            left: 34,
            right: 33,
          ),
          child: SizedBox(
            width: context.getWidth(context),
            child: ListView(
              children: [
                const SizedBox(
                  height: 56,
                ),
                const ProfileCard(
                  name: "Ayesha Bazmi",
                  job: "Marketing Manager",
                  image: "assets/images/blonde_woman.png",
                ),
                const SizedBox(
                  height: 50,
                ),
                BlocBuilder<ProfileInfoBloc, ProfileInfoState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        DefaultTabController(
                          length: 4,
                          child: TabBar(
                              onTap: (index) {
                                context
                                    .read<ProfileInfoBloc>()
                                    .add(ChangeTabEvent(index: index));
                              },
                              isScrollable: true,
                              tabAlignment: TabAlignment.start,
                              dividerColor: noColor,
                              indicatorColor: noColor,
                              labelStyle: const TextStyle(
                                  color: orangeColor,
                                  fontFamily: interFont,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                              unselectedLabelStyle: const TextStyle(
                                color: secondaryTextColor,
                                fontFamily: osFont,
                                fontSize: 10,
                              ),
                              tabs: [
                                Tab(
                                  text: (getIt.currentTabBarIndex == 0)
                                      ? "•  Personal Info"
                                      : "Personal Info",
                                ),
                                Tab(
                                  text: (getIt.currentTabBarIndex == 1)
                                      ? "•  Experience"
                                      : "Experience",
                                ),
                                Tab(
                                  text: (getIt.currentTabBarIndex == 2)
                                      ? "•  Top Skills"
                                      : "Top Skills",
                                ),
                                Tab(
                                  text: (getIt.currentTabBarIndex == 3)
                                      ? "•  Reviews"
                                      : "Reviews",
                                ),
                              ]),
                        ),
                        getIt.tabBarViewList[getIt.currentTabBarIndex],
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    width: context.getWidth(context),
                    height: 53,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: orangeColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Text("Hire me",
                        style: TextStyle(
                            color: whiteColor,
                            fontFamily: osFont,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(
                  height: 57,
                ),
              ],
            ),
          )),
    );
  }
}
