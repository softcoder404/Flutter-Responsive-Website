import 'package:abdulhameed_portfolio/tabs/about_tab.dart';
import 'package:abdulhameed_portfolio/tabs/blog_tab.dart';
import 'package:abdulhameed_portfolio/tabs/projects_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    AboutTab(),
    BlogTab(),
    ProjectsTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: tabWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
       items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: Text('About'),
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.chrome_reader_mode),
          title: Text('Blog'),
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.mobile_screen_share),
          title: Text('Projects'),
        ),
       ],
       currentIndex: _selectedIndex,
       onTap: (index)=>setState(()=>_selectedIndex = index),
       selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }
}
