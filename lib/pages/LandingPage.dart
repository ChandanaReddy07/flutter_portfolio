import 'package:firstapp/utils/responsive.dart';
import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class profilepic extends StatelessWidget {
  const profilepic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255,
      width: 255,
      padding: EdgeInsets.fromLTRB(100, 100, 10, 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(
              "assets/images/chandupic.jpeg",
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}

class aboutMe extends StatelessWidget {
  const aboutMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 100),
        child: Column(children: [
          Text(
            "- Hi! I'm Chandana🐼.\n\nI'm a fullstack developer (but if you see my code anywhere else,don't be surprised.Your support helps me dedicate more time to open-source projects and worry less about taking on paid contracts, it's win-win! :)",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ]));
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
            appBar: AppBar(
                title: Text('My Portfolio'),
                backgroundColor: Color.fromARGB(255, 37, 78, 167)),
            body: Center(

                // if (constraints.maxWidth < 708) {
                child: SingleChildScrollView(
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 12),
                    profilepic(),
                    SizedBox(height: 12),
                    aboutMe(),
                    SizedBox(height: 12),
                    Text(
                      "Lets have coffee somewhere...",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/facebook.png",
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(width: 12),
                        Text("Codes with coffee")
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/instagram.png",
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(width: 12),
                        Text("A Public gallery")
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/twitter.png",
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(width: 12),
                        Text("Coffee and Tweet"),
                      ],
                    ),
                    SizedBox(height: 12),
                    ElevatedButton(
                      child: Text("Route"),
                      style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homepageRoute);
                      },
                    )
                  ]),
            ))));
  }
}
