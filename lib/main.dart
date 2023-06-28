import 'package:flutter/material.dart';
import 'package:messenger_app/pages/register_page.dart';

import 'components/services/auth/login_or_register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginOrRegister(),
    );
  }
}
