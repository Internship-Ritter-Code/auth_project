import 'package:flutter/material.dart';
import 'package:auth_project/constants.dart';
import 'package:auth_project/home_view.dart';
import 'package:auth_project/register_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalate.primaryColor,
        padding: const EdgeInsets.all(40.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _iconLogin(),
                  _titleDescription(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _iconLogin() {
  return Image.asset(
    "images/splash.png",
    width: 150.0,
    height: 150.0,
  );
}

Widget _titleDescription() {
  return Column(
    children: const <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 20.0),
      ),
      Text(
        "Login Page",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 40.0),
      ),
    ],
  );
}

Widget _textField() {
  return Column(
    children: <Widget>[
      const Padding(
        padding: EdgeInsets.only(top: 20.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalate.underlineTextField,
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3.0,
            ),
          ),
          hintText: "Username",
          hintStyle: TextStyle(color: ColorPalate.hintColor),
        ),
        style: const TextStyle(color: Colors.white),
        autofocus: false,
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalate.underlineTextField,
              width: 3.0,
            ),
          ),
          hintText: "Password",
          hintStyle: TextStyle(color: ColorPalate.hintColor),
        ),
        style: const TextStyle(color: Colors.white),
        obscureText: true,
        autofocus: false,
      ),
    ],
  );
}

Widget _buildButton(BuildContext context) {
  return Column(
    children: <Widget>[
      const Padding(
        padding: EdgeInsets.only(top: 40.0),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const HomePage()));
        },
        child: InkWell(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: const Text(
              'Login',
              style: TextStyle(color: ColorPalate.primaryColor),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 18.0),
      ),
      const Text(
        'or',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      // ignore: deprecated_member_use
      FlatButton(
        child: const Text(
          'Register',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const RegisterPage()));
        },
      ),
    ],
  );
}
