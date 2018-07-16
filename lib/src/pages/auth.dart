import 'package:flutter/material.dart';

import 'package:udemy_course/src/pages/products.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: const Text('LOGIN'),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    '/',
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
