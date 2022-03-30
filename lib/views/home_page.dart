import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notes/views/email_verify_view.dart';
import 'package:notes/views/login_view.dart';

import '../firebase_options.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final currentUser = FirebaseAuth.instance.currentUser;
            if (currentUser == null) {
              return const LoginView();
            } else if (!currentUser.emailVerified) {
              return const EmailVerifyView();
            }
            return const Text('Hello');
          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}
