import 'package:flutter/material.dart';
import 'package:latihan/login.dart';
import 'package:latihan/dashboard.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  final bool user;
  SplashScreen(this.user);
  
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (c) => widget.user ? Dashboard() : Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
        backgroundColor: Colors.amber[300],
        body: const Center(
          child:  Padding(
              padding: const EdgeInsets.all(50),
          child: Text(
            "Desain Rumah Impian",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        )));
        
  }
  }