import 'package:flutter/material.dart';
import 'package:flutter_taxi_app_onboarding/screens/on_boarding_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taxi App OnBoarding',
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
