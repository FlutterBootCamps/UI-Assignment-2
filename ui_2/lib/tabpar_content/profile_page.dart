
import 'package:flutter/material.dart';

class ProfileTabContent extends StatelessWidget {
  const ProfileTabContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff3d3f54),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About Me',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white
                      ),
                    ),
        
              Container(
                width: 50,
                height: 1,
                color: Colors.orange,
                margin: const EdgeInsets.only(top: 2, left: 10),
              ),
                    const SizedBox(height: 10),
                    const Text(
                      'Ayesha Bazmi is a results-driven Marketing Manager with a passion for leveraging innovative strategies to drive brand growth and customer engagement in the ever-evolving digital landscape.',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                      
                      
                    ),
                    const SizedBox(height: 30,),
        
                    const Text(
                      'Feel free to reach me out for any specific queries.',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
       /////////--- the seconde box
        SizedBox(

  width: 420, 
  height: 220, 
  child: Container(
    margin: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xff3d3f54),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Contact Here',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 45,
                height: 1,
                color: Colors.orange,
                 margin: const EdgeInsets.only(top: 2, left: 10),
              ),
              const SizedBox(height: 10),
              const Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.call,color: Colors.white,),
                      SizedBox(width: 20,),
                      Text(
                        '+92 1234567890',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.mail,color: Colors.white),
                      SizedBox(width: 20,),
                      Text(
                        'ayeshabazmi@gmail.com',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                   Row(
                    children: [
                      Icon(Icons.location_on,color: Colors.white,),
                      SizedBox(width: 20,),
                      Text(
                        'Street 2, house #05, Motarway Route Road\n Islamabad, Pakistan',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ],
    ),
  ),
),

      ],
    );
    
  }
}
