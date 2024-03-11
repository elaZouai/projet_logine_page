import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}