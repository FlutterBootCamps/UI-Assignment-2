import 'package:flutter/material.dart';
import 'package:hw_2ui/extension/assistant.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffFF9A71),
        fixedSize: Size(context.getW(context), 53),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
      child: const Text(
        "Hire Me",
        style: TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Color(0xfffcfcfc),
        ),
      ),
    );
  }
}
