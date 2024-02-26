import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact extends StatelessWidget {
  const Contact({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: const Color.fromARGB(255, 245, 245, 245),
        size: 20,
      ),
      title: Text(
        title,
        style: GoogleFonts.openSans(
            color: const Color.fromARGB(255, 217, 217, 217),
            fontSize: 10,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
