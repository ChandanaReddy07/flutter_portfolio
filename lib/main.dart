import 'package:firstapp/pages/LandingPage.dart';
import 'package:firstapp/pages/aboutme.dart';

import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Codepur";

    return MaterialApp(
        // home: LandingPage(),
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(brightness: Brightness.dark),
        routes: {
          "/": (context) => LandingPage(),
          MyRoutes.homepageRoute: (context) => Aboutme(),
        });
  }
}
