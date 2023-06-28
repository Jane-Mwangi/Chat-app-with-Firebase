import 'package:flutter/material.dart';
import 'package:messenger_app/pages/login_page.dart';
import 'package:messenger_app/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({Key? key}) : super(key: key);

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //bool initially show the login screen
  bool showLoginPage =true;


  //toggle between login and register page
  void togglePages (){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
      return LoginPage(onTap: togglePages);
    }    else{
      return RegisterPage(onTap:togglePages);
    }
    return const Placeholder();
  }
}
