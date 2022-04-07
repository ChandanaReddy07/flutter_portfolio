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
      height: 150,
      width: 155,
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

class profilepic1 extends StatelessWidget {
  const profilepic1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 3000,
      padding: EdgeInsets.fromLTRB(100, 100, 10, 10),
      decoration: BoxDecoration(
        // shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(
              "assets/images/mybanner.jpeg",
            ),
            fit: BoxFit.fill),
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
            "- Hi! I'm Chandana🐼.\n\n",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
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
            // appBar: AppBar(
            //     title: Text('My Portfolio'),
            //     backgroundColor: Color.fromARGB(255, 37, 78, 167)),
            body: Center(

                // if (constraints.maxWidth < 708) {
                child: SingleChildScrollView(
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              // height: 400,
              // width: 1500,
              child: new Stack(
                overflow: Overflow.visible,
                alignment: Alignment.center,
                children: <Widget>[
                  profilepic1(),
                  new Positioned(
                    // left: 150,
                    top: 220,
                    child: profilepic(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            aboutMe(),
            SizedBox(height: 12),
            Text(
              "Lets have coffee somewhere...",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
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
                SizedBox(width: 50),
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
                SizedBox(width: 50),
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
                SizedBox(width: 50),
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
