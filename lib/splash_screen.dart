import 'package:flutter/material.dart';

import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  void _initializeApp() async {
    // Simulate an artificial delay (e.g., 2 seconds) to show the splash screen
    await Future.delayed(Duration(seconds: 2));

    // Navigate to the main screen after the delay
    _navigateToMainScreen();
  }

  void _navigateToMainScreen() {
    // Navigate to the MainScreen widget
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => MainScreen()));
  }

  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.white, // Change this to the desired background color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Expanded(
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                color: _colorFromHex('#19589d'), // Blue square in the center
              ),
            ),
          ),
          const Text(
            'NSBM',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center the green boxes horizontally
            children: [
              Container(
                width: 20,
                height: 20,
                color: _colorFromHex('#8dc540'), // Green squares
              ),
              SizedBox(width: 10), // Add a width of 10
              Container(
                width: 20,
                height: 20,
                color: _colorFromHex('#8dc540'), // Green squares
              ),
              SizedBox(width: 10), // Add a width of
              Container(
                width: 20,
                height: 20,
                color: _colorFromHex('#3cb44c'), // Green squares
              ),
              SizedBox(width: 10), // Add a width of 10
              Container(
                width: 20,
                height: 20,
                color: _colorFromHex('#3cb44c'), // Green squares
              ),
              SizedBox(width: 10), // Add a width of 10
              Container(
                width: 20,
                height: 20,
                color: _colorFromHex('#3cb44c'), // Green squares
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
