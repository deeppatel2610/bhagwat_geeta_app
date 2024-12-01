import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      Duration(seconds: 3),
      (timer) {
        Navigator.of(context).pushReplacementNamed("/home");
      },
    );
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent.shade100,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image(
                image: AssetImage('asset/image/logo.png'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Bhagavad Geeta',
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
