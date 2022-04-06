import 'package:flutter/material.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text(
          "- Hi! I'm Chandana🐼.",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          "I'm a fullstack developer (but if you see my code anywhere else, don't be surprised).Your support helps me dedicate more time to open-source projects and worry less about taking on paid contracts, it's win-win! :)",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    ));
  }
}
