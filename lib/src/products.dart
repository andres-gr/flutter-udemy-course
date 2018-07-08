import 'package:flutter/material.dart';

import 'package:udemy_course/src/pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;

  Products([this.products = const []]) {
    print('[Products Stateless] constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['imageUrl']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: const Text('Details'),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ProductPage(
                              imageUrl: products[index]['imageUrl'],
                              title: products[index]['title'],
                            ),
                      ),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productList;
    if (products.length > 0) {
      productList = ListView.builder(
        itemBuilder: _buildProductItem,
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
