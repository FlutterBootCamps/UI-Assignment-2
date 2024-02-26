import 'package:flutter/material.dart';

import 'package:nav/screens/home_page_tap.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planting',
     
      home: HomePageTab(),
    );
  }
}

