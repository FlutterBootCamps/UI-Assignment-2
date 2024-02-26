import 'package:flutter/material.dart';
import 'package:profile_application/constant/colors.dart';
import 'package:profile_application/widgets/container_widget.dart';
import 'package:profile_application/widgets/cotact_widget.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerWidget(
          cntainerChild: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "About Me",
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
              SizedBox(
                  width: 40, child: Divider(thickness: 1, color: orangeColor)),
              SizedBox(
                height: 15,
              ),
              Text(
                "Ayesha Bazmi is a results-driven Marketing Manager with\na passion for leveraging innovative strategies to drive\nbrand growth and customer engagement in the ever\n-evolving digital landscape.",
                style: TextStyle(color: textGreyColor, fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Feel free to reach me out for any specific queries.",
                style: TextStyle(color: textGreyColor, fontSize: 12),
              )
            ]),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ContainerWidget(
            cntainerChild: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Contact Here",
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
              SizedBox(
                  width: 40, child: Divider(thickness: 1, color: orangeColor)),
              SizedBox(
                height: 10,
              ),
              ContactWidget(
                img: 'assets/images/phone.png',
                textContact: "+92 1234567890",
              ),
              ContactWidget(
                img: 'assets/images/icon _mail.png',
                textContact: "ayeshabazmi@gmail.com",
              ),
              ContactWidget(
                img: 'assets/images/location.png',
                textContact:
                    "Street 2, house #05, Motarway Route Road\nIslamabad, Pakistan",
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )),
      ],
    );
  }
}
