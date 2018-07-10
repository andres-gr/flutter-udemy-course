import 'package:flutter/material.dart';

import 'package:udemy_course/src/product_manager.dart';
import 'package:udemy_course/src/pages/products_admin.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy List'),
      ),
      body: ProductManager(),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductsAdminPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
