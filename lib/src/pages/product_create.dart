import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  ProductCreatePageState createState() => ProductCreatePageState();
}

class ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(titleValue),
          TextField(
            onChanged: (String value) {
              setState(() {
                titleValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
