import 'package:flutter/material.dart';
import 'package:propel/widgets/curved_navigation_bar.dart';
import 'package:propel/screens/SingIn.dart';


//main method
void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  List<Widget> _widgetOptions = <Widget>[
    Text('Trending'),
    Text('Messgaes Screen'),
    Text('Profile Screen'),
    SignIn()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(
              Icons.accessibility_new_outlined,
              size: 30,
              color: Colors.blueAccent,
            ),
            Icon(Icons.archive_outlined, size: 30, color: Colors.blueAccent),
            Icon(Icons.apps_rounded, size: 30, color: Colors.blueAccent),
            Icon(Icons.account_box_outlined,
                size: 30, color: Colors.blueAccent),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blue,
          animationCurve: Curves.decelerate,
          animationDuration: Duration(milliseconds: 500),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Center(
          child: _widgetOptions.elementAt(_page),
        ));
  }
}
