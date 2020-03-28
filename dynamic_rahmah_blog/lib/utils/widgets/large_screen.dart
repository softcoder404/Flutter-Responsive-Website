import 'package:dynamic_rahmah_blog/utils/widgets/subscribe.dart';
import 'package:flutter/material.dart';

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Image.asset('assets/images/welcome.png',
                scale: .85, color: Colors.transparent),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Hello!',
                    style: TextStyle(
                      fontFamily: "Montserrat-Regular",
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF8591B0),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Wellcome To  ",
                        style:
                            TextStyle(fontSize: 50, color: Color(0xFF8591B0)),
                        children: [
                          TextSpan(
                              text: 'Dynamic Blog',
                              style: TextStyle(
                                fontSize: 55,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              )),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.0, top: 20.0),
                    child: Text("LET'S EXPLORE THE WORLD"),
                  ),
                  SizedBox(height: 40),
                  subscribe(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hello!',
              style: TextStyle(
                fontFamily: "Montserrat-Regular",
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color(0xFF8591B0),
              ),
            ),
            RichText(
              text: TextSpan(
                  text: "Wellcome To  ",
                  style: TextStyle(fontSize: 50, color: Color(0xFF8591B0)),
                  children: [
                    TextSpan(
                        text: 'Dynamic Blog',
                        style: TextStyle(
                          fontSize: 55,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        )),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 20.0),
              child: Text("LET'S EXPLORE THE WORLD"),
            ),
            SizedBox(height: 40),
            Image.asset('assets/images/welcome.png',
                scale: .85, color: Colors.transparent,colorBlendMode: BlendMode.clear),
            subscribe(context),
          ],
        ),
      ),
    );
  }
}
