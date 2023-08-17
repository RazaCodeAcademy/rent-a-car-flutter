import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rent_a_car/pages/auth/loginScreen.dart';

class SaplashScreen extends StatefulWidget {
  const SaplashScreen({super.key});

  @override
  State<SaplashScreen> createState() => _SaplashScreenState();
}
  
class _SaplashScreenState extends State<SaplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00B83A),
      body:Center(child: Image.asset('assets/images/Rent_car_logo.png',)),
    );
  }
}
