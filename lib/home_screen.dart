import 'dart:html';

import 'package:flutter/material.dart';

import 'package:order_tracker/order_tracker.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
//  List<TextDto> orderList = [
//     TextDto("@uiux_agency ","| 2020-2023"),

//   ];

//   List<TextDto> shippedList = [
//     TextDto("Your order has been shipped", "Tue, 29th Mar '22 - 5:04pm"),

//   ];

//   List<TextDto> outOfDeliveryList = [
//     TextDto("Your order is out for delivery", "Thu, 31th Mar '22 - 2:27pm"),
//   ];

//   List<TextDto> deliveredList = [
//     TextDto("Your order has been delivered", "Thu, 31th Mar '22 - 3:58pm"),
//   ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff252A40),
          toolbarHeight: 250, // Set this height
          flexibleSpace:
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 167,
              width: 105,
              child: Column(children: [
                Container(
                  height: 95,
                  width: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffFFFFFF),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: -4,
                        top: 12,
                        child: Image.asset(
                          'assets/🦆 icon _qr code outline_.png',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Ayesha Bazmi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color(0xffFCFCFC),
                  ),
                ),
                Text(
                  'Marketing Manager',
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xffFCFCFC),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset('assets/🦆 icon _logo facebook_.png'),
                    SizedBox(
                      width: 27,
                    ),
                    Image.asset('assets/🦆 icon _logo instagram_.png'),
                    SizedBox(
                      width: 27,
                    ),
                    Image.asset('assets/🦆 icon _logo twitter_.png'),
                  ],
                ),
              ]),
            ),
          ]),
          bottom: TabBar(
            // padding: EdgeInsets.all(32),
            indicator: BoxDecoration(),
            dividerColor: Color(0xff252A40),
            labelPadding: EdgeInsets.all(1),
            indicatorColor: Color(0xffFF9A71),
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Color(0xffFF9A71),
            unselectedLabelColor: Color(0xffF5F5F5),
            overlayColor: MaterialStateProperty.all<Color>(
              Colors.transparent,
            ),
            tabs: [
              Tab(text: 'Personal Info'),
              Tab(text: 'Experience'),
              Tab(text: 'Top skills'),
              Tab(text: 'Reviews'),
            ],
          ),
        ),
        backgroundColor: Color(0xff252A40),
        body: TabBarView(
          children: [
            ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(32),
                  margin: EdgeInsets.only(left: 40, right: 40),
                  width: 326,
                  height: 182,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(
                        0xff3D3F54,
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About Me',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: Color(0xffFCFCFC),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      LineWidget(),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Ayesha Bazmi is a results-driven Marketing Manager with a passion for leveraging innovative strategies to drive brand growth and customer engagement in the ever- evolving digital landscape.',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xffFCFCFC),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Feel free to reach me out for any specific queries.',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xffFCFCFC),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 323,
                  height: 197,
                  padding: EdgeInsets.all(32),
                  margin: EdgeInsets.only(left: 40, right: 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(
                        0xff3D3F54,
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Here',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: Color(0xffFCFCFC),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      LineWidget(),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/Vector.png'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '+92 1234567890',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffD9D9D9),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/🦆 icon _mail_.png'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'ayeshabazmi@gmail.com',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffD9D9D9),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/🦆 icon _location sharp_.png'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Street 2, house #05, Motarway Route Road Islamabad, Pakistan',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffD9D9D9),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                buttonwidget(),
              ],
            ),
            ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(32),
                  margin: EdgeInsets.only(left: 40, right: 40),
                  width: 326,
                  height: 900,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(
                        0xff3D3F54,
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Experience',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: Color(0xffFCFCFC),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      LineWidget(),
                      //                Padding(
                      //   padding:  EdgeInsets.all(10),
                      //   child: OrderTracker(
                      //     status: Status.delivered,
                      //     activeColor: Colors.grey,
                      //     inActiveColor: Colors.grey[300],
                      //     orderTitleAndDateList: orderList,
                      //     shippedTitleAndDateList: shippedList,
                      //     outOfDeliveryTitleAndDateList: outOfDeliveryList,
                      //     deliveredTitleAndDateList: deliveredList,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                buttonwidget(),
              ],
            ),
            ListView(
              children: [],
            ),
            ListView(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}

class buttonwidget extends StatelessWidget {
  const buttonwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: ElevatedButton(
        onPressed: () {
          // Add your onPressed function here
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffFF9A71),
          fixedSize: Size(326, 45), // Set the width and height of the button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Set border radius to 10
          ),
        ),
        child: Text(
          'Hire Me',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 11,
            color: Color(0xffFCFCFC),
          ),
        ), // Add your button text here
      ),
    );
  }
}

class LineWidget extends StatelessWidget {
  const LineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 0.5,
      color: Color(0xffFF9A71),
    );
  }
}
