import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:misc_app/Account/Account.dart';
import 'package:misc_app/Gallery/Gallery.dart';
import 'package:misc_app/Notifications/Notifications.dart';
import 'package:misc_app/Overview/Overview.dart';
import 'package:misc_app/YourMemberships.dart';
import 'package:misc_app/main.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:misc_app/HomeScreen/HomeScreen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = <Widget>[
    HomeScreen(),
    const Gallery(),
    const Overview(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar Start
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.white,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        leading: IconButton(
            icon: const Icon(Icons.location_on, color: Colors.red),
            onPressed: () {}),
        titleSpacing: -8,
        title: const Text(
          'Malappuram-Kottakkal',
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.card_membership_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const YourMemberships()));
            },
          ),
          IconButton(
              icon: const Icon(Icons.notifications, color: Colors.black),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Notifications()));
              }),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
//Appbar Stop
//Body Start (Navigation Bar)
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          iconSize: 25,
          showUnselectedLabels: false,
          selectedFontSize: 13,
          elevation: 8.0,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo),
                label: 'Gallery',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.pix_rounded),
                label: 'Overview',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_rounded),
                label: 'Account',
                backgroundColor: Colors.white),
          ]),
      //Body Stop (Navigation Bar)
    );
  }
}
