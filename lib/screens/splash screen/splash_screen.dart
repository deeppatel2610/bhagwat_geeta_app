import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          child: Image(
            image: AssetImage('asset/image/logo.png'),
          ),
        ),
      ),
    );
  }
}
