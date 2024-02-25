import 'package:flutter/material.dart';
import 'package:ui_assignment_2/component/custom_text.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          height: MediaQuery.of(context).size.height * 0.20,
          width: MediaQuery.of(context).size.width * 0.9,
          color: Color.fromRGBO(61, 63, 84, 1),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              customText(
                  text: "About Me",
                  color: Color.fromRGBO(255, 255, 255, 0.82),
                  weight: FontWeight.w700,
                  size: 11,
                  height: 1),
              SizedBox(
                  width: 40,
                  child: Divider(
                    endIndent: 1,
                    color: Color.fromRGBO(255, 154, 113, 1),
                    indent: 1,
                    thickness: 0.5,
                  )),
              SizedBox(
                height: 10,
              ),
              customText(
                  text:
                      "Ayesha Bazmi is a results-driven Marketing Manager with a passion for leveraging innovative strategies to drive brand growth and customer engagement in the ever-evolving digital landscape.",
                  color: Color.fromRGBO(217, 217, 217, 1),
                  weight: FontWeight.w400,
                  size: 12,
                  height: 1),
              SizedBox(
                height: 10,
              ),
              customText(
                  text: "Feel free to reach me out for any specific queries.",
                  color: Color.fromRGBO(217, 217, 217, 1),
                  weight: FontWeight.w400,
                  size: 12,
                  height: 2),
            ]),
          ),
        ),SizedBox(height: 20,),
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.9,
          color: Color.fromRGBO(61, 63, 84, 1),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              customText(
                  text: "Contact Here",
                  color: Color.fromRGBO(255, 255, 255, 0.82),
                  weight: FontWeight.w700,
                  size: 11,
                  height: 1),
              SizedBox(
                  width: 40,
                  child: Divider(
                    endIndent: 1,
                    color: Color.fromRGBO(255, 154, 113, 1),
                    indent: 1,
                    thickness: 0.5,
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.call,
                    color: Color.fromRGBO(245, 245, 245, 0.82),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  customText(
                    text: "+92 1234567890",
                    color: Color.fromRGBO(217, 217, 217, 1),
                    weight: FontWeight.w400,
                    size: 10,
                    height: 1,
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Color.fromRGBO(245, 245, 245, 0.82),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  customText(
                    text: "ayeshabazmi@gmail.com",
                    color: Color.fromRGBO(217, 217, 217, 1),
                    weight: FontWeight.w400,
                    size: 10,
                    height: 1,
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Color.fromRGBO(245, 245, 245, 0.82),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  customText(
                    text: "Street 2, house #05, Motarway Route Road Islamabad, Pakistan",
                    color: Color.fromRGBO(217, 217, 217, 1),
                    weight: FontWeight.w400,
                    size: 10,
                    height: 1,
                  )
                ],
              ),
            ]),
          ),
        )
      ],
    );
  }
}
