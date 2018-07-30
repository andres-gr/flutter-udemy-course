import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products({
    this.products = const [],
  }) {
    print('[Products Stateless] constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['imageUrl']),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  products[index]['title'],
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Oswald',
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6.0,
                    vertical: 2.5,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Text(
                    '\$ ${products[index]['price'].toString()}',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.0,
              vertical: 2.5,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: const Text('Union Square San Fran'),
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

  Widget _buildProductList() {
    Widget productList;
    if (products.length > 0) {
      productList = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productList = Container();
    }
    return productList;
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Stateless] build');
    return _buildProductList();
  }
}
