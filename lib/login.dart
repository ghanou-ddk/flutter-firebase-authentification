import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final FirebaseAuth auth = FirebaseAuth.instance;
            final Future<UserCredential> user =
                auth.createUserWithEmailAndPassword(
                    email: 'a@a.a', password: 'kokokokokoko');

            // Navigate back to first route when tapped.
          },
          child: const Text('login!'),
        ),
      ),
    );
  }
}
