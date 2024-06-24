import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cityguide/Pages/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          duration: 3000,
          splash: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.contain,
          ),
          splashTransition: SplashTransition.fadeTransition,
          nextScreen: const Login()),
    );
  }
}
