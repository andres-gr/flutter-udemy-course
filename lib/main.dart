import 'package:flutter/material.dart';

import 'package:udemy_course/src/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        accentColor: Colors.deepPurpleAccent,
        brightness: Brightness.light,
        primarySwatch: Colors.lime,
      ),
    );
  }
}
