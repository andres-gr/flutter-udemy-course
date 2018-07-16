import 'package:flutter/material.dart';

class ProductCreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: const Text('Save'),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => Center(
              child: const Text('Modal'),
            ),
          );
        },
      ),
    );
  }
}
