
import 'package:flutter/material.dart';

class HireButton extends StatelessWidget {
  const HireButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      decoration: BoxDecoration(
         color: const Color(0xFFFF9A71),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Center(
        child: Text(
          'Hire Me',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
