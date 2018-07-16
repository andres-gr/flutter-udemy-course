import 'package:flutter/material.dart';

import 'package:udemy_course/src/product_manager.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductsPage({
    this.addProduct,
    this.deleteProduct,
    this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy List'),
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: const Text('Choose'),
              ),
              ListTile(
                title: const Text('Manage Products'),
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    '/admin',
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: ProductManager(
        addProduct: addProduct,
        deleteProduct: deleteProduct,
        products: products,
      ),
    );
  }
}
