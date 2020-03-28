import 'package:dynamic_rahmah_blog/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class SendButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
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
              offset: Offset(0.0, 8.0),
              blurRadius: 8.0,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Notify',style:TextStyle(
                    color: Colors.white,
                    fontFamily: "Montserrat-Bold",
                    fontSize: ResposiveLayout.isSmallScreen(context) ? 12 : ResposiveLayout.isMediumScreen(context) ? 16 : 18.0,
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
