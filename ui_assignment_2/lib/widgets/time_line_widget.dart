
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:ui_assignment_2/widgets/time_line_child_widget.dart';

class TimeLine extends StatelessWidget {
  const TimeLine(
      {super.key,
      required this.title,
      required this.subtitle,
      this.isFirst = false});
  final String title;
  final String subtitle;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      beforeLineStyle: const LineStyle(thickness: 1),
      afterLineStyle: const LineStyle(thickness: 1),
      indicatorStyle: IndicatorStyle(
          height: 20,
          indicator: Container(
            height: 20,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 61, 63, 84),
                border: Border(
                    bottom:
                        BorderSide(color: Color.fromARGB(255, 245, 245, 245)),
                    top: BorderSide(color: Color.fromARGB(255, 245, 245, 245)),
                    right:
                        BorderSide(color: Color.fromARGB(255, 245, 245, 245)),
                    left:
                        BorderSide(color: Color.fromARGB(255, 245, 245, 245)))),
            child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 217, 217, 217),
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 61, 63, 84), width: 3),
                        top: BorderSide(
                            color: Color.fromARGB(255, 61, 63, 84), width: 3),
                        right: BorderSide(
                            color: Color.fromARGB(255, 61, 63, 84), width: 3),
                        left: BorderSide(
                            color: Color.fromARGB(255, 61, 63, 84),
                            width: 3)))),
          )),
      alignment: TimelineAlign.start,
      isFirst: isFirst,
      endChild: TimeLineChild(
        title: title,
        supTitle: subtitle,
      ),
    );
  }
}
