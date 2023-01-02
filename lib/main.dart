import 'package:flutter/material.dart';
import 'package:misc_app/Account/EditProfile.dart';
import 'package:misc_app/Gallery/GalleryView.dart';
import 'package:misc_app/HomeScreen/MembershipPlans.dart';
import 'package:misc_app/HomeScreen/Turf%20Football/PricingTable_1.dart';
import 'package:misc_app/HomeScreen/Turf%20Football/TurfFootball.dart';
import 'package:misc_app/LoginPage.dart';
import 'package:misc_app/MainPage.dart';
import 'package:misc_app/Gallery/Gallery.dart';
import 'package:misc_app/HomeScreen/HomeScreen.dart';
import 'package:misc_app/Overview/Overview.dart';
import 'package:misc_app/SplashScreen.dart';
import 'package:misc_app/YourMemberships.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
