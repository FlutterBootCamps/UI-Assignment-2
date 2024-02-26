import 'package:flutter/material.dart';
import 'package:uiassiment/widgets/custom_dot.dart';
import 'package:uiassiment/widgets/custom_time_line.dart';
import 'package:uiassiment/widgets/frame_4.dart';
import 'package:uiassiment/widgets/hire_me_button.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xff252A40),
        appBar: PreferredSize(
          preferredSize:Size(double.infinity, 250),
          child:Column(children: [ Frame4(),
                const SizedBox(
                  child: CustomTab(),
                ),
          ],)

          
         

        ),
        body: ListView(
          children: [
            Column(
              children: [
                
                Container(
                  height: 429,
                  width: 326,
                  decoration: const BoxDecoration(
                      color: Color(0xff3D3F54),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       
                         Text(
                            "Experience",
                            style: Textstyle3(),
                          ),
                        
                       
                         Container(
                            height:1,
                            width: 35,
                            color: Color(0xffFF9A71),
                          ),
                        
                        Column(
                          children: [
                            TimeLine(
                              isFirst: true,
                              isPast: false,
                              experienceTimeLinejob: Text(
                                "UX Designer",
                                style: Textstyle1(),
                              ),
                              experienceTimeLinedate: Text(
                                "@uiux_agency | 2020-2023",
                                style: Textstyle2(),
                              ),
                            ),
                            TimeLine(
                              isFirst: false,
                              isPast: true,
                              experienceTimeLinejob: Text(
                                "Graphic Designer",
                                style: Textstyle1(),
                              ),
                              experienceTimeLinedate: Text(
                                "@uiux_agency | 2020-2023",
                                style: Textstyle2(),
                              ),
                            ),
                            TimeLine(
                              isFirst: false,
                              isPast: true,
                              experienceTimeLinejob: Text(
                                "Marketing Manager",
                                style: Textstyle1(),
                              ),
                              experienceTimeLinedate: Text(
                                "@uiux_agency | 2020-2023",
                                style: Textstyle2(),
                              ),
                            ),
                            TimeLine(
                              isFirst: false,
                              isPast: true,
                              experienceTimeLinejob: Text(
                                "Maths Tutor",
                                style: Textstyle1(),
                              ),
                              experienceTimeLinedate: Text(
                                "@uiux_agency | 2020-2023",
                                style: Textstyle2(),
                              ),
                            ),
                            TimeLine(
                              isFirst: false,
                              isPast: true,
                              experienceTimeLinejob: Text(
                                "Business Manager",
                                style: Textstyle1(),
                              ),
                              experienceTimeLinedate: Text(
                                "@uiux_agency | 2020-2023",
                                style: Textstyle2(),
                              ),
                            ),
                            TimeLine(
                              isFirst: false,
                              isPast: true,
                              experienceTimeLinejob: Text(
                                "UX Designer",
                                style: Textstyle1(),
                              ),
                              experienceTimeLinedate: Text(
                                "@uiux_agency | 2020-2023",
                                style: Textstyle2(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                const HireMe()
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextStyle Textstyle2() => TextStyle(fontSize: 9, color: Color(0xffD9D9D9));

  TextStyle Textstyle1() => TextStyle(fontSize: 11, color: Color(0xffFCFCFC));
  TextStyle Textstyle3() => TextStyle(
      fontSize: 11, color: Color(0xffFCFCFC), fontWeight: FontWeight.bold);
}
