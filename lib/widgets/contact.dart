import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
         icon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
                fontFamily: 'OpenSans', fontSize: 10, color: Color(0xfffcfcfc)),
          ),
        ),
        const SizedBox(height: 40,)
      ],
    );
  }
}
