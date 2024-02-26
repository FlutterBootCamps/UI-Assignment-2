import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeLineChild extends StatelessWidget {
  const TimeLineChild({super.key, required this.title, required this.supTitle});
  final String title;
  final String supTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              title,
              style: GoogleFonts.openSans(
                  color: const Color.fromARGB(255, 252, 252, 252),
                  fontSize: 11,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              supTitle,
              style: GoogleFonts.inter(
                  color: const Color.fromARGB(255, 217, 217, 217),
                  fontSize: 9,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ],
    );
  }
}
