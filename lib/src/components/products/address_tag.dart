import 'package:flutter/material.dart';

class AddressTag extends StatelessWidget {
  const AddressTag({
    Key key,
    @required this.address,
  }) : super(key: key);

  final String address;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Text(address),
    );
  }
}
