
import 'package:flutter/material.dart';

class HireMe extends StatelessWidget {
  const HireMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Container(
        height: 53,
        width: 326,
        decoration: BoxDecoration(
            color: Color(0xffFF9A71),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            )),
        child: Center(
            child: Text(
          "Hire Me",
          style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 15,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}