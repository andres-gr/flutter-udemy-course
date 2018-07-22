import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String _email = '';
  String _password = '';
  bool _valid = false;

  void _pressLogin() {
    Navigator.pushReplacementNamed(
      context,
      '/products',
    );
  }

  void _checkValid() {
    if (!_valid) {
      if (_email != '' && _password != '') {
        setState(() {
          _valid = true;
        });
      }
    } else {
      if (_email == '' || _password == '') {
        setState(() {
          _valid = false;
        });
      }
    }
  }

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
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                onChanged: (String value) {
                  setState(() {
                    _email = value;
                  });
                  _checkValid();
                },
              ),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                onChanged: (String value) {
                  setState(() {
                    _password = value;
                  });
                  _checkValid();
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: const Text('LOGIN'),
                onPressed: _valid ? _pressLogin : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
