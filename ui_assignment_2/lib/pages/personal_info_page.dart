import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_assignment_2/helper/extintion.dart';
import 'package:ui_assignment_2/widgets/contact_widget.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 42, 64),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  "assets/profileimage.png",
                  fit: BoxFit.cover,
                ),
                Image.asset("assets/parcode.png"),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Ayesha Bazmi",
            style: GoogleFonts.openSans(
                color: const Color.fromARGB(255, 252, 252, 252),
                fontSize: 12,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Marketing Manager",
            style: GoogleFonts.inter(
                color: const Color.fromARGB(255, 252, 252, 252),
                fontSize: 10,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset("assets/icons.png"),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 4,
                    width: 4,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 255, 153, 113)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Personal Info",
                    style: GoogleFonts.inter(
                        color: const Color.fromARGB(255, 255, 153, 113),
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                width: context.getWidth() / 12,
              ),
              Text(
                "Experience",
                style: GoogleFonts.inter(
                    color: const Color.fromARGB(255, 245, 245, 245),
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: context.getWidth() / 12,
              ),
              Text(
                "Top skills",
                style: GoogleFonts.inter(
                    color: const Color.fromARGB(255, 245, 245, 245),
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: context.getWidth() / 12,
              ),
              Text(
                "Reviews",
                style: GoogleFonts.inter(
                    color: const Color.fromARGB(255, 245, 245, 245),
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(30),
            height: context.getHeight() / 4.5,
            width: context.getWidth() * 0.80,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 61, 63, 84),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.getWidth() / 17,
                  child: Stack(
                    children: [
                      Text(
                        "About Me",
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                      Positioned(
                        top: 17,
                        child: SizedBox(
                          width: context.getWidth() / 11.5,
                          child: const Divider(
                            color: Color.fromARGB(255, 255, 153, 113),
                            thickness: 0.5,
                            height: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Ayesha Bazmi is a results-driven Marketing Manager with a passion for leveraging innovative strategies to drive brand growth and customer engagement in the ever-evolving digital landscape.",
                  style: GoogleFonts.openSans(
                      color: const Color.fromARGB(255, 217, 217, 217),
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Feel free to reach me out for any specific queries.",
                  style: GoogleFonts.openSans(
                      color: const Color.fromARGB(255, 217, 217, 217),
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(30),
            height: context.getHeight() / 3.5,
            width: context.getWidth() * 0.80,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 61, 63, 84),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.getWidth() / 17,
                  child: Stack(
                    children: [
                      Text(
                        "Contact Here",
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                      Positioned(
                        top: 17,
                        child: SizedBox(
                          width: context.getWidth() / 11.5,
                          child: const Divider(
                            color: Color.fromARGB(255, 255, 153, 113),
                            thickness: 0.5,
                            height: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Contact(
                  icon: Icons.call,
                  title: "+92 1234567890",
                ),
                
                const Contact(
                  icon: Icons.email,
                  title: "ayeshabazmi@gmail.com",
                ),
                
                const Contact(
                  icon: Icons.location_pin,
                  title:
                      "Street 2, house #05, Motarway Route Road Islamabad, Pakistan",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: context.getHeight() / 15,
            width: context.getWidth() * 0.80,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 153, 113),
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Text(
                "Hire Me",
                style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


