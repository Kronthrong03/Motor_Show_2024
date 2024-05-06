// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motor_show_2024_app/views/Introduction_UI.dart';

class SplashScreen_MotorshowUI extends StatefulWidget {
  const SplashScreen_MotorshowUI({super.key});

  @override
  State<SplashScreen_MotorshowUI> createState() => _SplashScreen_MotorshowUIState();
}

class _SplashScreen_MotorshowUIState extends State<SplashScreen_MotorshowUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Introduction_UI(),
        ),
      ),
    );
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Image.asset(
              'assets/images/LOGO car.jpg',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              'Motor Show 2024',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.04,
              ),
            ),
            Text(
              'THE MOBILITY OF TOY FUL EXPERIENCES',
              style: TextStyle(                
                fontSize: MediaQuery.of(context).size.height * 0.02,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            CircularProgressIndicator(
              color: Colors.grey[600],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Text(
              'Created by Natthawut\nDT7 SAU 2024',
              style: TextStyle(              
                fontSize: MediaQuery.of(context).size.height * 0.02,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
