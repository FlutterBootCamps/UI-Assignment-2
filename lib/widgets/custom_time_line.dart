import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:uiassiment/widgets/experince_time_line.dart';

class TimeLine extends StatelessWidget {
  final bool isFirst;
  final bool isPast;
  final experienceTimeLinejob;
  final experienceTimeLinedate;

  const TimeLine({
    super.key,
    required this.isFirst,
    required this.isPast,
    required this.experienceTimeLinejob,
    required this.experienceTimeLinedate,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TimelineTile(
        isFirst: isFirst,
        
        beforeLineStyle: LineStyle(color: Color(0xffD9D9D9), thickness: 1,),
        indicatorStyle: IndicatorStyle(
          color: Color(0xffD9D9D9),
          iconStyle: IconStyle(iconData: Icons.circle_outlined, fontSize: 20),
        ),
        endChild: ExperienceTimeLine(
          child: experienceTimeLinejob,
          child2: experienceTimeLinedate,
        ),
      ),
    );
  }
}
