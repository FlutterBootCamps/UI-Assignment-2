import 'package:flutter/material.dart';
import 'package:hw_10/widgets/bio_container.dart';
import 'package:hw_10/widgets/contact_card.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BioContainer(
          headerText: "About me",
          subText:
              "Ayesha Bazmi is a results-driven Marketing Manager with a passion for leveraging innovative strategies to drive brand growth and customer engagement in the ever-evolving digital landscape.\n\nFeel free to reach me out for any specific queries.",
        ),
        SizedBox(
          height: 15,
        ),
        ContactCard(
          address:
              "Street 2, house #05, Motarway Route Road Islamabad, Pakistan",
          email: "ayeshabazmi@gmail.com",
          number: "+92 1234567890",
        ),
      ],
    );
  }
}
