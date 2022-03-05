import 'package:cupertino_demo_app/cupertino_modules/cupertino_bottom_nav/home_screen_body.dart';
import 'package:cupertino_demo_app/cupertino_modules/cupertino_bottom_nav/profile_screen_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoBottomNavigationHome extends StatelessWidget {
  CupertinoBottomNavigationHome({Key? key});
  // int _currentIndex = 0;

  List<BottomNavigationBarItem> _bottomNavItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home_rounded)),
    BottomNavigationBarItem(icon: Icon(Icons.perm_identity_rounded)),
  ];

  List<Widget> _tabs = [HomeScreenBody(), ProfileScreenBody()];
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        // currentIndex: _currentIndex,

        onTap: (newIndex) {},
        items: _bottomNavItems,
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return _tabs[index];
          },
        );
      },
    );
  }
}
