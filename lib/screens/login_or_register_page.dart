import 'package:fitmind/screens/signin_screen.dart';
import 'package:fitmind/screens/signup_screen.dart'; // Import your signup screen file
import 'package:flutter/material.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  // Initially show login page
  bool showLoginPage = true;

  // Toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return SigninScreen(
        onTap: togglePages,
      );
    } else {
      return SignupScreen( // Ensure the correct class name is used here
        onTap: togglePages,
      );
    }
  }
}
