import 'package:flutter/material.dart';

class TitleDefault extends StatelessWidget {
  const TitleDefault({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 26.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Oswald',
      ),
    );
  }
}
