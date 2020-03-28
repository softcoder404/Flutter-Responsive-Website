import 'package:flutter/material.dart';

class ResposiveLayout extends StatelessWidget {
  final mediumScreen;
  final smallScreen;
  final largeScreen;
  ResposiveLayout({
    this.mediumScreen,
    this.smallScreen,
    this.largeScreen,
  });

  static bool isSmallScreen(BuildContext context){
    return MediaQuery.of(context).size.width < 800;
  }
  static bool isMediumScreen(BuildContext context){
    return MediaQuery.of(context).size.width > 800 && MediaQuery.of(context).size.width < 1200;
  }
  static bool isLargeScreen(BuildContext context){
    return MediaQuery.of(context).size.width > 800;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth > 800){
          return largeScreen;
        }else if(constraints.maxWidth < 1200 && constraints.maxWidth > 800){
          return mediumScreen ?? largeScreen;
        }else{
          return smallScreen ?? largeScreen;
        }
      }
      
    );
  }
}