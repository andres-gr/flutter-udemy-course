import 'package:flutter/material.dart';

import 'package:udemy_course/src/product_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Easy List'),
      ),
      body: ProductManager(),
    );
  }
}
