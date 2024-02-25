import 'package:flutter/material.dart';
import 'package:hw_10/widgets/experience_container.dart';
import 'package:hw_10/widgets/personal_info.dart';
import 'package:hw_10/widgets/reviews_container.dart';
import 'package:hw_10/widgets/top_skills_container.dart';

class HomeData {
  int currentTabBarIndex = 0;

  final List<Widget> tabBarViewList = [
    const PersonalInfo(),
    const ExperienceContainer(),
    const TopSkillsContainer(),
    const ReviewsContainer(),
  ];
}

