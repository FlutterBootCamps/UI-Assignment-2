import 'package:flutter/material.dart';

extension Screen on BuildContext {
  double getW(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double getH(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  push(BuildContext context, Widget nextPage) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (route) => nextPage));
  }
}