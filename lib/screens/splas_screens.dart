import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kriyona/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.of(context).pushReplacementNamed('home_page');
      },
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: h / 4.5,
            ),
            Container(
              alignment: Alignment.center,
              height: h / 3,
              width: w / 1,
              child: Image.asset('lib/img/splash_screen.gif'),
            ),
            SizedBox(
              height: h / 3,
            ),
            Text(
              "KRIYONA",
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 18,
                letterSpacing: 5,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
