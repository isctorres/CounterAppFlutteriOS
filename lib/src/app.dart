import 'package:counter_app/src/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      home: MyHomePage(title: 'COUNTER APP'),
      theme: CupertinoThemeData(primaryColor: Colors.blue),
    );
  }
}