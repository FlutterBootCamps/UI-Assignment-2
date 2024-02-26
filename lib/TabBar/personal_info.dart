import 'package:flutter/material.dart';

class PersonalInfo extends StatefulWidget {
  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Expanded(
            child: Card(
              color: Color(0xff3d3f54),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header for About Me section
                    Text('  \nAbout Me',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    SizedBox(
                      height: 3,
                    ),
                    // Divider
                    Container(
                      height: 1,
                      width: 42,
                      color: Color(0xFFFF9a71),
                    ),
                    // About Me text
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                          'Ayesha Bazmi is a results-driven Marketing Manager with a passion for leveraging innovative strategies to drive brand growth and customer engagement in the ever-evolving digital landscape.\n \n Feel free to reach me out for any specific queries.',
                          style: TextStyle(
                              color: Color(0xffd9d9d9), fontSize: 12)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Card(
              color: Color(0xff3d3f54),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header for Contact section
                    Text(' \nContact Here',
                        style: TextStyle(color: Colors.white)),
                    SizedBox(
                      height: 3,
                    ),
                    // Divider
                    Container(
                      height: 1,
                      width: 42,
                      color: Color(0xFFFF9a71),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Phone Row
                          Row(
                            children: [
                              Icon(Icons.phone, color: Color(0xfff5f5f5)),
                              SizedBox(width: 20),
                              Text('+92 1234567890',
                                  style: TextStyle(
                                      color: Color(0xffd9d9d9), fontSize: 12)),
                            ],
                          ),
                          SizedBox(height: 10),
                          // Email Row
                          Row(
                            children: [
                              Icon(Icons.mail, color: Color(0xfff5f5f5)),
                              SizedBox(width: 20),
                              Text('ayeshabazmi@gmail.com',
                                  style: TextStyle(
                                      color: Color(0xffd9d9d9), fontSize: 12)),
                            ],
                          ),
                          SizedBox(height: 10),
                          // Address Row
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Color(0xfff5f5f5)),
                              SizedBox(width: 20),
                              Expanded(
                                  child: Text(
                                      'Street 2, house #05, Motorway Route Road  Islamabad, Pakistan',
                                      style: TextStyle(
                                          color: Color(0xffd9d9d9),
                                          fontSize: 12))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
