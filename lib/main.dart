import 'package:flutter/material.dart';
import 'package:notes/views/email_verify_view.dart';
import 'package:notes/views/home_page.dart';
import 'package:notes/views/login_view.dart';
import 'package:notes/views/register_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: {
        '/login/': (context) => const LoginView(),
        '/register/': (context) => const RegisterView(),
        '/verifyEmail/': (context) => const EmailVerifyView(),
      },
      home: const HomePage(),
    );
  }
}
