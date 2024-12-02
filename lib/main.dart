import 'package:bhagwat_geeta_app/provider/home_provider.dart';
import 'package:bhagwat_geeta_app/screens/home%20page/home_page.dart';
import 'package:bhagwat_geeta_app/screens/splash%20screen/splash_screen.dart';
import 'package:bhagwat_geeta_app/screens/verse%20page/verse_page.dart';
import 'package:bhagwat_geeta_app/screens/verses/verses_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashScreen(),
          '/home': (context) => const HomePage(),
          '/verses': (context) => const VersesPage(),
          '/verse': (context) => const VersePage(),
        },
      ),
    );
  }
}
