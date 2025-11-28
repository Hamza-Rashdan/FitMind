import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser;

  // Sign out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  // API Call: Fetch Meal Recommendations
  Future<void> fetchMealRecommendations() async {
    final url = Uri.parse("http://127.0.0.1:5000/recommend"); // Adjust if needed

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "age": 25, // Replace with actual user input
        "weight_kg": 70,
        "height_cm": 175,
        "gender": "male",
        "activity_level": "moderate",
        "goal": "maintain"
      }),
    );

    if (response.statusCode == 200) {
      print("Meal Plan: ${response.body}");
    } else {
      print("Failed to fetch recommendations");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal Plan"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: signUserOut,
          ),
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: fetchMealRecommendations,
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Click for Meals",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
