import 'package:misc_app/LoginPage.dart';
import 'package:misc_app/MainPage.dart';
import 'package:misc_app/main.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
            color: Colors.white,
          )),
          Center(
            child: Container(
              child: Image.asset(
                'assets/images/Misc_Logo.png',
                fit: BoxFit.contain,
              ),
              width: 120,
              height: 120,
            ),
          ),
        ],
      ),
    );
  }
}
