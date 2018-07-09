import 'package:flutter/material.dart';

import 'package:udemy_course/src/pages/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthPage(),
      theme: ThemeData(
        accentColor: Colors.deepPurpleAccent,
        brightness: Brightness.light,
        primarySwatch: Colors.lime,
      ),
    );
  }
}
