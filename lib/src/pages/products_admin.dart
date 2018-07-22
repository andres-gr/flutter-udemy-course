import 'package:flutter/material.dart';

import 'product_create.dart';
import 'product_list.dart';

class ProductsAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  ProductsAdminPage({
    this.addProduct,
    this.deleteProduct,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Products Admin'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Create Product',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'My Products',
              ),
            ],
          ),
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
                    Navigator.pushReplacementNamed(
                      context,
                      '/products',
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductCreatePage(
              addProduct: addProduct,
            ),
            ProductListPage(),
          ],
        ),
      ),
    );
  }
}
