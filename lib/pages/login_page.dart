import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            fontSize: 20,
            color: Colors.teal[600],
            fontWeight: FontWeight.bold,
          ),
          //textScaleFactor: 2.0,
        ),
      ),
    );
  }
}
