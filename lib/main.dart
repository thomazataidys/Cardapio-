import 'package:appmaisgostoso/screens/home_screen.dart';
import 'package:appmaisgostoso/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaisGostoso());
}

class MaisGostoso extends StatelessWidget {
  const MaisGostoso({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '+Gostoso App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lime),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
