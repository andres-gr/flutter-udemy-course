import 'package:flutter/material.dart';

import 'package:udemy_course/src/product_control.dart';
import 'package:udemy_course/src/products.dart';

class ProductManager extends StatefulWidget {
  final String startProduct;

  ProductManager({this.startProduct}) {
    print('[Product Manager Stateful] constructor');
  }

  @override
  _ProductManagerState createState() {
    print('[Product Manager Stateful] create state');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = [];

  @override
  void initState() {
    print('[Product Manager State] init');
    if (widget.startProduct != null) {
      _products.add(widget.startProduct);
    }
    super.initState();
  }

  void _addProduct({String product}) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[Product Manager State] did update');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[Product Manager State] build');
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(
            handlePress: _addProduct,
          ),
        ),
        Expanded(
          child: Products(_products),
        ),
      ],
    );
  }
}