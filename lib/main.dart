import 'package:cupertino_demo_app/cupertino_modules/cupertino_widgets/cupertino_date_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CupertinoBottomNavigationHome(),
      home: CupertinoDatePickerWidget(),
      // home: CupertinoWidgets(),
    );
  }
}
