import 'package:dynamic_rahmah_blog/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final navLinks = ["Home", "Product", "Features", "Contact"];
  List<Widget> navItem() {
    return navLinks
        .map((text) => Padding(
              padding: EdgeInsets.only(left: 18.0),
              child:
                  Text(text, style: TextStyle(fontFamily: "Montserrat-Bold")),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFC86DD7),
                        Color(0xFF30231E),
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    )),
                alignment: Alignment.centerRight,
                child: Text('D',
                    style: TextStyle(fontSize: 30.0, color: Colors.white)),
              ),
              Text('ynamic Blog', style: TextStyle(fontSize: 26.0,color: Colors.teal))
            ],
          ),
         
          if (!ResposiveLayout.isSmallScreen(context))
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ...navItem()]..add(InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0),
                      width: 120,
                      height: 40.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFC86DD7),
                            Color(0xFF3023AE),
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF6078EA).withOpacity(.3),
                            offset: Offset(0, 8),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                letterSpacing: 1,
                                fontFamily: "Montserrat-Bold"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
              )
              else
               Image.asset('assets/images/menu.png',width:26,height:26),
        ]
      ),
    );
  }
}
