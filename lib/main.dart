import 'package:device_preview/device_preview.dart';
import 'package:e_comerce_small_app/home_page.dart';
import 'package:e_comerce_small_app/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'main_page.dart';
void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MainPage(),
      home: OnboardingPage(),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
    );
  }
}



