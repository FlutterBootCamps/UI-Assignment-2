
import 'package:flutter/material.dart';

class experience_page extends StatelessWidget {
  const experience_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff3d3f54),
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Experience',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            height: 1,
            color: Colors.orange,
            margin: const EdgeInsets.only(top: 1, left: 10),
          ),
        ],
      ),
    );
  }
}
