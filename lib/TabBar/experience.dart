import 'package:flutter/material.dart';
import 'package:nav/data/experience_data.dart'; // Importing experience data model
import 'package:timeline_tile/timeline_tile.dart'; // Importing timeline tile package

class Experience extends StatefulWidget {
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  // Dummy experience data
  final List<ExperienceData> experiences = [
    ExperienceData(
        title: '\nUX Designer', company: '@uiux_agency', duration: '2020-2023'),
    ExperienceData(
        title: '\nGraphic Designer',
        company: '@uiux_agency',
        duration: '2020-2023'),
    ExperienceData(
        title: '\nMarketing Manager',
        company: '@uiux_agency',
        duration: '2020-2023'),
    ExperienceData(
        title: '\nMath Tutor', company: '@uiux_agency', duration: '2020-2023'),
    ExperienceData(
        title: '\nBusiness Manager',
        company: '@uiux_agency',
        duration: '2020-2023'),
    ExperienceData(
        title: '\nUX Designer', company: '@uiux_agency', duration: '2020-2023'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252a40),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Card(
          color: Color(0xff3d3f54),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Experience section header
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('  \nExperienc',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                           )),
                    SizedBox(
                      height: 3,
                    ),
                    // Divider
                    Container(
                      height: 1,
                      width: 40,
                      color: Color(0xFFFF9a71),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListView.builder(
                    itemCount: experiences.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = experiences[index];
                      // Timeline tile for each experience item
                      return TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.2,
                        isFirst: index == 0,
                        isLast: index == experiences.length - 1,
                        indicatorStyle: IndicatorStyle(
                          width: 20,
                          color: Colors.white,
                          padding: const EdgeInsets.all(6),
                        ),
                        beforeLineStyle: LineStyle(
                          color: Colors.white,
                        ),
                        endChild: Padding(
                          padding: const EdgeInsets.only(
                             right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                item.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: [
                                      // Company name
                                      TextSpan(
                                        text: item.company,
                                        style: TextStyle(
                                          color: Color(0xffd9d9d9),
                                          fontSize: 13,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' | ',
                                        style: TextStyle(
                                          color: Color(0xffd9d9d9),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      // Duration
                                      TextSpan(
                                        text: item.duration,
                                        style: TextStyle(
                                          color: Color(0xffd9d9d9),
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
