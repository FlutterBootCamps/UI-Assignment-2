import 'package:flutter/material.dart';
import 'package:profile_application/pages/personal_info.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PersonalInfoPage());
  }
}
