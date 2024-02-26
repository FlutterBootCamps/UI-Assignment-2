import 'package:flutter/material.dart';
import 'package:hw_2ui/widgets/circle.dart';
import 'package:hw_2ui/widgets/end_child.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLine extends StatelessWidget {

  const TimeLine({Key? key, required this.isFirst, required this.headerTitle})
      : super(key: key);

  // Indicates whether this is the first item in the timeline
  final bool isFirst;
  
  // The title for the timeline header
  final String headerTitle;

  @override
  Widget build(BuildContext context) {
    // Container with a fixed height to contain the timeline tile
    return SizedBox(
      height: 60,
      // TimelineTile widget to create a vertical timeline item
      child: TimelineTile(
        isFirst: isFirst, // Indicates whether it's the first item
        // Styling for the line before the timeline item
        beforeLineStyle: const LineStyle(color: Color(0xffD9D9D9), thickness: 1),
        // Styling for the timeline indicator
        indicatorStyle: const IndicatorStyle(
          color: Color(0xffD9D9D9),
          width: 15,
          height: 15,
          // Custom indicator using the CircleWidget
          indicator: CircleWidget(),
        ),
        // Content of the timeline item
        endChild: EndChildWidget(
          header: headerTitle,
        ),
      ),
    );
  }
}