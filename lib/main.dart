import 'package:flutter/material.dart';

import 'src/pages/auth.dart';
import 'src/pages/product.dart';
import 'src/pages/products.dart';
import 'src/pages/products_admin.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> _products = [];

  void _addProduct({Map<String, dynamic> product}) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct({int index}) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.deepPurpleAccent,
        brightness: Brightness.light,
        primarySwatch: Colors.lime,
      ),
      home: AuthPage(),
      routes: {
        '/products': (BuildContext context) => ProductsPage(
              products: _products,
            ),
        '/admin': (BuildContext context) => ProductsAdminPage(
              addProduct: _addProduct,
              deleteProduct: _deleteProduct,
            ),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');

        if (pathElements[0] != '') {
          return null;
        }

        if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);

          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => ProductPage(
                  imageUrl: _products[index]['imageUrl'],
                  title: _products[index]['title'],
                ),
          );
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => ProductsPage(
                products: _products,
              ),
        );
      },
    );
  }
}
