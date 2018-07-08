import 'package:flutter/material.dart';

import 'package:udemy_course/src/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.lime,
          accentColor: Colors.deepPurpleAccent
      ),
      home: HomePage(),
    );
  }
}
