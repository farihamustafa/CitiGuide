import 'package:cityguide/Pages/cityscreen.dart';
import 'package:cityguide/Pages/homepage.dart';
import 'package:cityguide/Pages/login.dart';
import 'package:cityguide/Pages/signup.dart';
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
      home: Login(),
    );
  }
}
