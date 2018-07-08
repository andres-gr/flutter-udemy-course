import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Product Page'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              onPressed: () => Navigator.pop(context),
              child: Text('Go back'),
            ),
          )
        ],
      ),
    );
  }
}
