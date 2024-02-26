import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 231,
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
                  "Contact Here",
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
                const SizedBox(
                  height: 25,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.call, color: Color(0xffF5F5F5)),
                      SizedBox(width: 30),
                      Text(
                        "+92 1234567890",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xffD9D9D9)),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.email_rounded, color: Color(0xffF5F5F5)),
                      SizedBox(width: 30),
                      Text(
                        "ayeshabazmi@gmail.com",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xffD9D9D9)),
                      )
                      //  ayeshabazmi@gmail.com
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.location_on_sharp, color: Color(0xffF5F5F5)),
                      SizedBox(width: 30),
                      Text(
                        "Street 2, house #05, Motarway Route Road\nIslamabad, Pakistan",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xffD9D9D9)),
                      )
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
