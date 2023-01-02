import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:misc_app/HomeScreen/MembershipPlans.dart';
import 'package:misc_app/MainPage.dart';

class YourMemberships extends StatefulWidget {
  const YourMemberships({super.key});

  @override
  State<YourMemberships> createState() => _YourMembershipsState();
}

class _YourMembershipsState extends State<YourMemberships> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar start
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.5,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back,
                color: Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainPage()));
            }),
        titleSpacing: -5,
        title: const Text(
          'Your Memberships',
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      //appbar close
      //body start
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 30),
          //Blue box start
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MembershipPlans(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: const [BoxShadow(blurRadius: 0.1)],
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 5, 126, 226),
                      Color.fromARGB(255, 60, 159, 240),
                    ])),
                child: Row(
                  children: const <Widget>[
                    Expanded(
                      flex: 2,
                      child: Icon(Icons.star_border_outlined,
                          color: Colors.white, size: 23),
                    ),
                    Expanded(
                        flex: 6,
                        child: Text(
                          'View All Available\nMembership Plans',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        )),
                    Expanded(
                      flex: 2,
                      child: Icon(Icons.arrow_forward_rounded,
                          color: Colors.white, size: 27),
                    )
                  ],
                ),
              ),
            ),
          ),
          //Blue box stop
          const SizedBox(height: 25),
          //heading start
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Your current Memberships',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          //heading stop
          const SizedBox(height: 40),
          const Center(
            child: Text(
              "You don't have any Memberships..!!",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
