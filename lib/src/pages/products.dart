import 'package:flutter/material.dart';

import '../product_manager.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductsPage({
    this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy List'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.favorite,
            ),
            onPressed: () {},
          )
        ],
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
                leading: Icon(
                  Icons.edit,
                ),
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
        products: products,
      ),
    );
  }
}
