import 'package:cupertino_demo_app/cupertino_modules/cupertino_bottom_nav/second_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Profile Page'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.perm_identity_rounded,
                size: 100,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 30,
              ),
              CupertinoButton(
                color: Colors.blue,
                child: const Text('go to Next page without bottom nav'),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).push(
                    CupertinoPageRoute<void>(
                      builder: (BuildContext context) =>
                          const CupertinoBottomNavSecondScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
