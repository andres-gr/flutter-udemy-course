import 'package:flutter/material.dart';

import 'product_card.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products({
    this.products = const [],
  }) {
    print('[Products Stateless] constructor');
  }

  Widget _buildProductList() {
    Widget productList;
    if (products.length > 0) {
      productList = ListView.builder(
        itemBuilder: (
          BuildContext context,
          int index,
        ) =>
            ProductCard(
              index: index,
              product: products[index],
            ),
        itemCount: products.length,
      );
    } else {
      productList = Container();
    }
    return productList;
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Stateless] build');
    return _buildProductList();
  }
}
