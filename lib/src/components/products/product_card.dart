import 'package:flutter/material.dart';

import '../elements/title_default.dart';
import 'address_tag.dart';
import 'price_tag.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.index,
    @required this.product,
  }) : super(key: key);

  final int index;
  final Map<String, dynamic> product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(product['imageUrl']),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TitleDefault(
                  title: product['title'],
                ),
                SizedBox(
                  width: 8.0,
                ),
                PriceTag(
                  price: product['price'].toString(),
                ),
              ],
            ),
          ),
          AddressTag(
            address: 'Union Square San Fran',
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                color: Theme.of(context).accentColor,
                icon: Icon(
                  Icons.info,
                ),
                onPressed: () => Navigator.pushNamed<bool>(
                      context,
                      '/product/' + index.toString(),
                    ),
              ),
              IconButton(
                color: Colors.red,
                icon: Icon(
                  Icons.favorite_border,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
