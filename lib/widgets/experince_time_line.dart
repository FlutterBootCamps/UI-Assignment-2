import 'package:flutter/material.dart';

class ExperienceTimeLine extends StatelessWidget {
  final  child;
    final  child2;


  const ExperienceTimeLine({super.key, required this.child, required this.child2,});

  @override
  Widget build(BuildContext context) {
    return   Column(
        children: [
        //job 
        Padding(
          padding: const EdgeInsets.only(top:25,left: 20),
          child: Row(children: [child],),
        ),
        //job / date
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(children: [child2],),
        ),
      ]
    );
  }
}