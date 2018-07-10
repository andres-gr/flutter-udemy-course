import 'package:flutter/material.dart';

import 'package:udemy_course/src/pages/products.dart';

class ProductsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Admin'),
      ),
      body: Center(
        child: const Text('Products'),
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: const Text('Admin Products'),
              ),
              ListTile(
                title: const Text('Products List'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductsPage(),
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
