import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fitmind/screens/home_screen.dart'; // Ensure this path is correct
import 'package:fitmind/screens/login_or_register_page.dart'; // Add this line for LoginOrRegisterPage



class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
      
      //user loged in

      if(snapshot.hasData){
        return HomeScreen();
      }

      //user not loged in

      else {
        return LoginOrRegisterPage();
      }
      

      },
     )
    );
  }
}