import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //logo
              Icon(
                Icons.message,
                size: 80,
              ),
              //welcome back message
              Text(
                'Welcome back you\'ve been  missed',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              )
              //email textfield

              //sign in button
              //not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}
