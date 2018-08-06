import 'dart:async';

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final double price;
  final String description;
  final String imageUrl;
  final String title;

  ProductPage({
    this.price,
    this.description,
    this.imageUrl,
    this.title,
  });

  void _showWarningDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text('This cannot be undone!'),
          actions: <Widget>[
            FlatButton(
              child: const Text('DISCARD'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: const Text('CONTINUE'),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context, true);
              },
            ),
          ],
        );
      },
    );
  }

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
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Oswald',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 12.0,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          '\$ ${price.toString()}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      description,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                textColor: Colors.white,
                child: const Text('DELETE'),
                onPressed: () => _showWarningDialog(context),
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
