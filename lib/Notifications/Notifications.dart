import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:misc_app/HomeScreen/HomeScreen.dart';
import 'package:misc_app/MainPage.dart';
import 'package:misc_app/YourMemberships.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  /// List of Tab Bar Item
  List<String> items = [
    "All",
    "Membership",
    "Offer",
    "Account",
    "Other",
  ];

  /// List of body icon
  List<IconData> icons = [
    Icons.dashboard_rounded,
    Icons.card_membership_rounded,
    Icons.local_offer_rounded,
    Icons.person_rounded,
    Icons.assistant_rounded,
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.5,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back,
                color: Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {
              Navigator.pop(context);
            }),
        titleSpacing: -5,
        title: const Text(
          'Notifications',
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(5),
          child: Column(
            children: [
              /// CUSTOM TABBAR
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                current = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.all(5),
                              width: 90,
                              height: 40,
                              decoration: BoxDecoration(
                                color: current == index
                                    ? Colors.white70
                                    : const Color.fromARGB(15, 96, 125, 139),
                                borderRadius: current == index
                                    ? BorderRadius.circular(10)
                                    : BorderRadius.circular(10),
                                border: current == index
                                    ? Border.all(color: Colors.blue, width: 2)
                                    : null,
                              ),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color: current == index
                                          ? Colors.black
                                          : Colors.blueGrey),
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                              visible: current == index,
                              child: Container(
                                width: 5,
                                height: 5,
                                decoration: const BoxDecoration(
                                    color: Colors.blue, shape: BoxShape.circle),
                              ))
                        ],
                      );
                    }),
              ),

              /// MAIN BODY
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: double.infinity,
                height: 550,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icons[current],
                      size: 80,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(items[current],
                        style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 25,
                            color: Colors.blue)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
