import 'dart:async';

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String imageUrl;
  final String title;

  ProductPage({
    this.imageUrl,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(imageUrl),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(title),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                textColor: Colors.white,
                child: const Text('DELETE'),
                onPressed: () => Navigator.pop(context, true),
              ),
            )
          ],
        ),
      ),
      onWillPop: () {
        Navigator.pop(
          context,
          false,
        );
        return Future.value(false);
      },
    );
  }
}
