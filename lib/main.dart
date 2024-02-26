import 'package:flutter/material.dart';
import 'package:uiassiment/screen/profile_info_screen.dart';
// import 'package:uiassiment/screen/profile_info_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  PersonalInfo(),
    );
  }
}
