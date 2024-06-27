import 'package:cityguide/Pages/cityscreen.dart';
import 'package:cityguide/Pages/loginpage.dart';
import 'package:cityguide/Pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
