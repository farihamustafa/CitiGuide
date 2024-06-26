
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cityguide/Pages/loginpage.dart';
import 'package:cityguide/Pages/welcomescreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          duration: 3000,
          splash: Container(
            
            height: 6000,
            width: 130,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
            ),
          ),
          splashTransition: SplashTransition.fadeTransition,
          nextScreen: const WelcomScreen()),
    );
  }
}
