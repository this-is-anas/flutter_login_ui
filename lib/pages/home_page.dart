import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  void signUserOut(){
    FirebaseAuth.instance.signOut();
  }

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage") ,actions: [IconButton(onPressed: signUserOut, icon: Icon(Icons.logout ,size: 40,),)],backgroundColor: Colors.grey,),
      body: Center(child: Text("Logged In As : ${user.email!}",
        style: TextStyle(fontSize: 25),)),
    );
  }
}
