import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}