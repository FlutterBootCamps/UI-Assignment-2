import 'package:flutter/material.dart';
import 'package:ui_2/tabpar_content/Experience_page.dart';
import 'package:ui_2/tabpar_content/profile_page.dart';
import 'package:ui_2/widget/button_widget.dart';
import 'package:ui_2/widget/tab_dot.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
         backgroundColor: Color(0xff252a40),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //------- avtar image
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    backgroundImage: AssetImage('images/person.png'),
                  ),
                  Positioned(
                    left: 96,
                    top: 12,
                    child: Image.asset("images/QR.png"),
                  ),
                ],
              ),
              //---name and title
              const SizedBox(height: 20),
              const Column(
                children: [
                  Text( 'Ayesha Bazmi',
                    style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white,),
                  ),
                  SizedBox(height: 8),
                  Text( 'Marketing Manager',
                    style: TextStyle( fontSize: 14,color: Colors.white, ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              //--------- Profile icons
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/facebook.png"),
                  const SizedBox(width: 20),
                  Image.asset("images/instagram.png"),
                  const SizedBox(width: 20),
                  Image.asset("images/twitter.png"),
                ],
              ),
              const SizedBox(height: 10),

              //------- tabBar


               TabBar(
               
                indicator: Dot(color: Color.fromARGB(255, 255, 145, 0)), 
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Color.fromARGB(255, 255, 145, 0),
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: 'Profile'),
                  Tab(text: 'Experience'),
                  Tab(text: 'Top skills'),
                  Tab(text: 'Reviews'),
                ],
                
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    ProfileTabContent(),
                    experience_page(),
                  ],
                ),
              ),

              //---costume button 

              HireButton()
            ],
          ),
        ),
      ),
    );
  }
}
