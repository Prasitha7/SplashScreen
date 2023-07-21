import 'package:flutter/material.dart';
import 'splash_screen.dart';

class MainScreen extends StatelessWidget {
  void _restartApp(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => SplashScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the Main Screen!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _restartApp(context), // Trigger the app restart
              child: Text('Restart App'),
            ),
          ],
        ),
      ),
    );
  }
}
