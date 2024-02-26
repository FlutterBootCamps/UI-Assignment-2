import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav/TabBar/personal_info.dart';
import 'package:nav/TabBar/experience.dart';
import 'package:nav/widget/dot_tab.dart';

class HomePageTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xff252a40),
        body: Column(
          children: [
            SizedBox(height: 30),
            // Displaying avatar and QR code
            Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/avatar.png'),
                ),
                Positioned(
                  left: 75,
                  top: 13,
                  child: Image.asset("images/qrcode.png"),
                ),
              ],
            ),
            SizedBox(height: 10),
            // User name and role
            Text('Ayesha Bazmi',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Text('Marketing Manager',
                style: TextStyle(fontSize: 18, color: Colors.grey)),
            SizedBox(
              height: 18,
            ),
            // Social media icons
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset("images/facebook.png"),
              SizedBox(
                width: 17,
              ),
              Image.asset("images/instagram.png"),
              SizedBox(
                width: 17,
              ),
              Image.asset("images/twitter.png")
            ]),
            SizedBox(height: 10),
            // Tab bar for navigation
            Container(
              width: 340,
              height: 80,
              child: TabBar(
                labelColor: Color(0xFFFF9a71),
                labelPadding: EdgeInsets.only(left: 0, right: 0),
                unselectedLabelColor: Colors.grey,
                indicator: DotTab(color: Color(0xFFFF9a71), radius: 4),
                tabs: [
                  Expanded(flex: 15, child: Tab(text: 'Personal Info')),
                  Tab(text: '  Experience'),
                  Tab(text: 'Top skills'),
                  Tab(text: 'Reviews '),
                ],
              ),
            ),
            Expanded(
              // Tab bar view to display corresponding content for each tab.
              child: Container(
                child: TabBarView(
                  children: [
                    PersonalInfo(),
                    Experience(),
                    // Add other tab views here
                  ],
                ),
              ),
            ),
            // Button to hire
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFF9a71), // Background color
                onPrimary: Colors.white, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 140, vertical: 20),
              ),
              onPressed: () {
                // No action when button is pressed
              },
              child: Text(
                'Hire Me',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
