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
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(imageUrl),
          Padding(
            child: Text(title),
            padding: const EdgeInsets.all(10.0),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RaisedButton(
              child: const Text('DELETE'),
              color: Theme.of(context).accentColor,
              onPressed: () => Navigator.pop(
                    context,
                    true
                  ),
              textColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
