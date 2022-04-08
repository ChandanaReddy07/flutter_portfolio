import 'package:flutter/material.dart';

class HoveringWidget extends StatefulWidget {
  final bool isHover;
  HoveringWidget({required this.isHover});
  _HoveringWidgetState createState() => _HoveringWidgetState();
}

class _HoveringWidgetState extends State<HoveringWidget> {
  @override
  bool isHover = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          height: 70,
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.only(
              top: (isHover) ? 25 : 30.0, bottom: !(isHover) ? 25 : 30),
          child: Container(
            height: 30,
            color: Colors.blue,
            child: InkWell(
              onTap: () {},
              child: Text("Hover Button"),
              onHover: (val) {
                print("Val--->{}$val");
                setState(() {
                  isHover = val;
                });
              },
            ),
            /*val--->true when user brings in mouse
           val---> false when brings out his mouse*/
          ),
        ),
      ),
    );
  }
}
