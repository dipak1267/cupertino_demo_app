import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoWidgets extends StatelessWidget {
  const CupertinoWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CupertinoDatePicker(onDateTimeChanged: (t) {}),
          // CupertinoTimerPicker(onTimerDurationChanged: (duration) {}),
          CupertinoButton(
            color: Colors.blue,
            child: const Text('Iphone style date-picker'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
