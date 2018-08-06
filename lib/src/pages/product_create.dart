import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  const ProductCreatePage({
    this.addProduct,
  });

  _ProductCreatePageState createState() => _ProductCreatePageState();
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String _titleValue;
  String _descriptionValue;
  double _priceValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Product Title',
            ),
            onChanged: (String value) {
              setState(() {
                _titleValue = value;
              });
            },
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              labelText: 'Product Description',
            ),
            onChanged: (String value) {
              setState(() {
                _descriptionValue = value;
              });
            },
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Product Price',
            ),
            onChanged: (String value) {
              setState(() {
                _priceValue = double.parse(value);
              });
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            child: const Text('Save'),
            onPressed: () {
              final Map<String, dynamic> product = {
                'description': _descriptionValue,
                'imageUrl': 'assets/food.jpg',
                'price': _priceValue,
                'title': _titleValue,
              };
              widget.addProduct(
                product: product,
              );
              Navigator.pushReplacementNamed(
                context,
                '/products',
              );
            },
          ),
        ],
      ),
    );
  }
}
