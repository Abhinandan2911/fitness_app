import 'package:fitness_app/screens/OnBoardingScreen/onBoardingScreen.dart';
import 'package:fitness_app/screens/ageScreen/ageScreen.dart';
import 'package:fitness_app/screens/genderScreen/genderScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      home: AgePage(),
    );
  }
}
