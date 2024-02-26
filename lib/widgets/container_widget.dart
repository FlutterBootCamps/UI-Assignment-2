import 'package:flutter/material.dart';
import 'package:profile_application/constant/colors.dart';

class ContainerWidget extends StatelessWidget {
   ContainerWidget({
  
    super.key,
    required this.cntainerChild
  });
  Widget cntainerChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(10)),
      child: cntainerChild
    );
  }
}
