import 'package:flutter/material.dart';
import 'package:hw_2ui/constant/color.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Outer circle with border
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white, 
        border: Border.all(
          color: Colors.white,
          width: 1,
        )
      ),
      child: Center(
        // Inner circle with border
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
              color: cColor, 
              width: 1.5, 
            ),
          ),
        ),
      ),
    );
  }
}
