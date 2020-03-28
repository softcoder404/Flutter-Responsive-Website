import 'package:flutter/material.dart';
import '../responsiveLayout.dart';
import 'send_btn.dart';

Padding subscribe(BuildContext context) {
    return Padding(
                  padding: EdgeInsets.only(
                    left: 4.0,
                    top: 10.0,
                    bottom: 40.0,
                    right: ResposiveLayout.isSmallScreen(context) ? 4 : 74,
                  ),
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 8),
                              blurRadius: 8),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 8,
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Your Email Address",
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: SendButton(),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
  }

