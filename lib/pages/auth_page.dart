import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jobly/pages/login_or_register.dart';
import 'home_page.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // is user logged in
          if(snapshot.hasData){
            return HomePage();
          }
          //is user not logged in
          else{
            return LoginOrRegister();
          }
        },
      )

    );
  }
}
