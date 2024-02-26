import 'package:flutter/material.dart';
import 'package:hw_2ui/constant/color.dart';

class EndChildWidget extends StatelessWidget {
  const EndChildWidget({super.key, required this.header});

  final String header;



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: const TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 11,
              color: TextColor,
            ),
          ),
          const Text(
            "@uiux_agency | 2020-2023",
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 9,
              color: Color(0xffd9d9d9),
            ),
          ),
        ],
      ),
    );
  }
}
