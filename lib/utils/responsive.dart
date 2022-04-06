import 'package:firstapp/pages/LandingPage.dart';
import 'package:flutter/material.dart';

class Responsive1 extends StatelessWidget {
  const Responsive1({Key? key}) : super(key: key);

  // final Widget mobile;
  // final Widget tab;
  // final Widget desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 768) {
        return Column(children: [profilepic(), aboutMe()]);
      } else {
        return Row(children: [profilepic(), aboutMe()]);
      }
    });
  }
}
