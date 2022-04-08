import 'package:firstapp/pages/inkwel.dart';
import 'package:firstapp/utils/on_hover_button.dart';
import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

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
      height: 250,
      width: 3000,
      padding: EdgeInsets.fromLTRB(100, 100, 10, 10),
      decoration: BoxDecoration(
        // shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(
              "assets/images/mybanner.jpeg",
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
        // padding: EdgeInsets.symmetric(horizontal: 50),

        child: Column(children: [
      Text(
        "Chandana Reddy🐼",
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
      // Text(
      //   "Happy, weird, austere...",
      //   style: TextStyle(
      //       fontSize: 10,
      //       fontWeight: FontWeight.bold,
      //       color: Color.fromARGB(255, 102, 98, 97)),
      // ),
    ]));
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

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
              padding: const EdgeInsets.all(0),
              child: new Stack(
                overflow: Overflow.visible,
                alignment: Alignment.center,
                children: <Widget>[
                  profilepic1(),
                  new Positioned(
                    // left: 150,
                    top: 200,
                    child: profilepic(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 120),
            aboutMe(),
            SizedBox(height: 10),
            Text(
              "Happy, weird, austere...",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 162, 164, 167)),
            ),
            SizedBox(height: 20),
            Text(
              "Lets have coffee somewhere...",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 12),
            GestureDetector(
              onTap: () => {_launchURL("https://github.com/ChandanaReddy07")},
              child: OnHover(builder: (isHovered) {
                final color =
                    isHovered ? Colors.grey : Color.fromARGB(255, 23, 18, 18);
                return Container(
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:
                        Stack(alignment: Alignment.center, children: <Widget>[
                      Container(
                        width: 450,
                        padding: EdgeInsets.fromLTRB(25, 10, 200, 10),
                        color: color,
                        child: Container(
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/git2.png",
                                height: 40,
                                width: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "Codes with coffee",
                        textAlign: TextAlign.center,
                      ),
                    ]));
              }),
            ),
            SizedBox(height: 12),
            GestureDetector(
              onTap: () =>
                  {_launchURL("https://www.instagram.com/chandana_reddy.07/")},
              child: OnHover(builder: (isHovered) {
                final color =
                    isHovered ? Colors.grey : Color.fromARGB(255, 23, 18, 18);
                return Container(
                    width: 500,
                    child:
                        Stack(alignment: Alignment.center, children: <Widget>[
                      Container(
                        width: 450,
                        padding: EdgeInsets.fromLTRB(25, 10, 200, 10),
                        color: color,
                        child: Container(
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/instagram.png",
                                height: 40,
                                width: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text("A Public gallery")
                    ]));
              }),
            ),
            SizedBox(height: 12),
            GestureDetector(
              onTap: () => {_launchURL("https://twitter.com/DChandanaReddy1")},
              child: OnHover(builder: (isHovered) {
                final color =
                    isHovered ? Colors.grey : Color.fromARGB(255, 23, 18, 18);
                return Container(
                    width: 500,
                    child:
                        Stack(alignment: Alignment.center, children: <Widget>[
                      Container(
                        width: 450,
                        padding: EdgeInsets.fromLTRB(25, 10, 200, 10),
                        color: color,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/twitter.png",
                              height: 40,
                              width: 40,
                            ),
                          ],
                        ),
                      ),
                      Text("Coffee and Tweet"),
                    ]));
              }),
            ),
            SizedBox(height: 12),
            GestureDetector(
              onTap: () =>
                  {_launchURL("https://www.linkedin.com/in/dcr-7978993d/")},
              child: OnHover(builder: (isHovered) {
                final color =
                    isHovered ? Colors.grey : Color.fromARGB(255, 23, 18, 18);
                return Container(
                    width: 500,
                    child:
                        Stack(alignment: Alignment.center, children: <Widget>[
                      Container(
                        width: 450,
                        padding: EdgeInsets.fromLTRB(25, 10, 200, 10),
                        color: color,
                        child: Container(
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/linkedin.png",
                                height: 40,
                                width: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text("A cup with some professional talks"),
                    ]));
              }),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              child: Text("Route"),
              style: TextButton.styleFrom(minimumSize: Size(100, 40)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homepageRoute);
              },
            ),
            SizedBox(height: 30),
            Text('Made with 💕 and Flutter'),
            SizedBox(height: 20),
          ]),
    ))));
  }
}
