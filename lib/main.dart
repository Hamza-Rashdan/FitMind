import 'package:firebase_core/firebase_core.dart';
import 'package:fitmind/screens/auth_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyAJcjEdEw_xx6Q5jF6qxwJ48w_wNQ9JGQQ",
        authDomain: "fitmind-a97cc.firebaseapp.com",
        projectId: "fitmind-a97cc",
        storageBucket: "fitmind-a97cc.appspot.com",
        messagingSenderId: "632458835208",
        appId: "1:632458835208:web:b672bc6470f313c76e68bd",
        databaseURL: "https://fitmind-a97cc-default-rtdb.firebaseio.com/",
      ),
    );
  } else {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyAJcjEdEw_xx6Q5jF6qxwJ48w_wNQ9JGQQ",
        authDomain: "fitmind-a97cc.firebaseapp.com",
        projectId: "fitmind-a97cc",
        storageBucket: "fitmind-a97cc.appspot.com",
        messagingSenderId: "632458835208",
        appId: "1:632458835208:web:b672bc6470f313c76e68bd",
        databaseURL: "https://fitmind-a97cc-default-rtdb.firebaseio.com/",
      ),
    );
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AuthPage(),
    );
  }
}
