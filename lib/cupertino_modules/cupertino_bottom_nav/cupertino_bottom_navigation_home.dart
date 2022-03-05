import 'package:cupertino_demo_app/cupertino_modules/cupertino_bottom_nav/home_screen_body.dart';
import 'package:cupertino_demo_app/cupertino_modules/cupertino_bottom_nav/profile_screen_body.dart';
import 'package:cupertino_demo_app/cupertino_modules/cupertino_bottom_nav/second_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoBottomNavigationHome extends StatefulWidget {
  const CupertinoBottomNavigationHome({Key? key}) : super(key: key);

  @override
  State<CupertinoBottomNavigationHome> createState() =>
      _CupertinoBottomNavigationHomeState();
}

class _CupertinoBottomNavigationHomeState
    extends State<CupertinoBottomNavigationHome> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: _currentIndex,
        onTap: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded)),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity_rounded)),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            switch (_currentIndex) {
              case 0:
                return const HomeScreenBody();
              case 1:
                return const ProfileScreenBody();
              default:
                return CupertinoPageScaffold(
                  navigationBar: CupertinoNavigationBar(
                    middle: Text('Page 1 of tab $index'),
                  ),
                  child: Center(
                    child: CupertinoButton(
                      child: const Text('Next page'),
                      onPressed: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute<void>(
                            builder: (BuildContext context) =>
                                const CupertinoBottomNavSecondScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                );
            }
          },
        );
      },
    );
  }
}
