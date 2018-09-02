import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String _email = '';
  String _password = '';
  bool _terms = false;
  bool _valid = false;

  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      fit: BoxFit.cover,
      colorFilter: ColorFilter.mode(
        Colors.black.withOpacity(0.5),
        BlendMode.dstATop,
      ),
      image: AssetImage('assets/background.jpg'),
    );
  }

  TextField _buildEmailTextField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        filled: true,
        fillColor: Colors.white,
      ),
      onChanged: (String value) {
        setState(() {
          _email = value;
        });
        _checkValid();
      },
    );
  }

  TextField _buildPasswordTextField() {
    return TextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        filled: true,
        fillColor: Colors.white,
      ),
      onChanged: (String value) {
        setState(() {
          _password = value;
        });
        _checkValid();
      },
    );
  }

  SwitchListTile _buildAcceptSwitchListTile() {
    return SwitchListTile(
      title: const Text('Accept Terms'),
      value: _terms,
      onChanged: (bool value) {
        setState(() {
          _terms = value;
          _checkValid();
        });
      },
    );
  }

  void _submitForm() => _valid ? _pressLogin() : null;

  void _pressLogin() {
    Navigator.pushReplacementNamed(
      context,
      '/products',
    );
  }

  void _checkValid() {
    if (!_valid) {
      if (_email != '' && _password != '' && _terms) {
        setState(() {
          _valid = true;
        });
      }
    } else {
      if (_email == '' || _password == '' || !_terms) {
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
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            image: _buildBackgroundImage(),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildEmailTextField(),
              SizedBox(
                height: 10.0,
              ),
              _buildPasswordTextField(),
              SizedBox(
                height: 10.0,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: _buildAcceptSwitchListTile(),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: const Text('LOGIN'),
                onPressed: _submitForm,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
