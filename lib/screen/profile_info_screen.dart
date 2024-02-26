import 'package:flutter/material.dart';
import 'package:uiassiment/widgets/about_me_card.dart';
import 'package:uiassiment/widgets/contact_info.dart';
import 'package:uiassiment/widgets/custom_dot.dart';
import 'package:uiassiment/widgets/hire_me_button.dart';
import 'package:uiassiment/widgets/frame_4.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

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
            SizedBox(
              height: 5,
            ),
            AboutMe(),
            SizedBox(height: 20),
            ContactInfo(),
            SizedBox(height: 20),
            HireMe()
          ],
        ),
      ),
    );
  }
}





// fit:FittedBox.cover,

//  DefaultTabController(
//       length: 4,
//       child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: const Color(0xff252A40),
//             leading: SizedBox(height: 28,width: 28, child: Image.asset('')),

//             bottom: const TabBar(

//               indicatorSize: TabBarIndicatorSize.tab,
//               labelStyle: TextStyle(color: Color(0xffFF9A71)),
//               unselectedLabelColor: Color(0xffF5F5F5),

//               tabs: [
//                 Tab(text: "Personal Info"),
//                 Tab(text: "Experience"),
//                 Tab(text: "Top skills"),
//                 Tab(text: "Reviews"),
//               ],
//             ),

//           ),
//           body: Container(
//             height: 100,
//             width: 100,
//             color: Colors.amber,
//           ),
//       ),
//     );
//   }
// }

/*appBar: AppBar(
          toolbarHeight: 200,
          backgroundColor: const Color(0xff252A40),
          leading: SizedBox(
            height: 28,
            width: 28,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(''),
                  ],
                ),
                
              ],
            ),
             
          ),
          
        ), */
