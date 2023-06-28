import 'package:flutter/material.dart';
import 'package:messenger_app/components/my_button.dart';
import 'package:messenger_app/components/my_text_field.dart';

class LoginPage extends StatefulWidget {
  final void Function()?onTap;
  const LoginPage({Key? key,required this.onTap}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text conrollers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign in User
  void signIn(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0,right: 25,top: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Icon(
                  Icons.message,
                  size: 80,
                ),
                const SizedBox(height: 40,),
                //welcome back message
                Text(
                  'Welcome back you\'ve been  missed',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 30,),
                //email textfield
                MyTextField(controller: emailController,
                    hintText: 'Email',
                    obscureText:false),
                const SizedBox(height: 10,),
                MyTextField(controller: passwordController,
                    hintText: 'Password',
                    obscureText:true),
                const SizedBox(height: 10,),
                //sign in button
                MyButton(onTap: signIn, text: 'Sign In',),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?'),
                    const SizedBox(width: 4,),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text('Register Now,',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                    )
                  ],
                )
                //not a member? register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}
