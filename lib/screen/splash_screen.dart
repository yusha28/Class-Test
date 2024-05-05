import 'dart:async';
import 'package:flutter/material.dart';
// Replace 'your_app_name' with your actual app name

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the main screen after a delay
    Timer(
      Duration(seconds: 3), // Adjust the duration as needed
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SplashScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Customize the background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/splash_logo.png', // Path to your splash image
              width: 200, // Customize the width
            ),
            SizedBox(
                height: 20), // Add spacing between logo and text (optional)
            Text(
              'Your App Name',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Customize the text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
