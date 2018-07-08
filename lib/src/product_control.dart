import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function handlePress;
  
  ProductControl({this.handlePress});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).accentColor,
      onPressed: () {
        handlePress(
          product: 'New product',
        );
      },
      child: Text(
        'Add Product',
        style: TextStyle(color: Colors.white),
      ),
    );
  }}

