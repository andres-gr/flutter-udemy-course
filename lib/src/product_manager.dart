import 'package:flutter/material.dart';

import 'package:udemy_course/src/product_control.dart';
import 'package:udemy_course/src/products.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;
  
  ProductManager({
    this.addProduct,
    this.deleteProduct,
    this.products,
  });
  
  @override
  Widget build(BuildContext context) {
    print('[Product Manager State] build');
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(
            handlePress: addProduct,
          ),
        ),
        Expanded(
          child: Products(
            deleteProduct: deleteProduct,
            products: products,
          ),
        ),
      ],
    );
  }
}
