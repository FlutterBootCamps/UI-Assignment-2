import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 182,
          width: 326,
          decoration: const BoxDecoration(
              color: Color(0xff3D3F54),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "About Me",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFFFFFF)),
                ),
                Container(
                  height: 1,
                  width: 35,
                  color: Colors.amber,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Ayesha Bazmi is a results-driven Marketing Manager with\na passion for leveraging innovative strategies to drive\nbrand growth and customer engagement in the ever-\nevolving digital landscape.",
                        maxLines: 5,
                        style:
                            TextStyle(fontSize: 10, color: Color(0xffD9D9D9)),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Feel free to reach me out for any specific queries.",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xffD9D9D9)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
