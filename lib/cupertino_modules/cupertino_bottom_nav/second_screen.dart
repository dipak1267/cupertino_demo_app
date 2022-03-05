import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoBottomNavSecondScreen extends StatelessWidget {
  const CupertinoBottomNavSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // navigationBar: CupertinoNavigationBar(
      //   middle: const Text('Page 2 of'),
      // ),

      child: Center(
        child: CupertinoButton(
          child: const Text('Back'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
