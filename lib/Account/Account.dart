import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:misc_app/Account/Bookings.dart';
import 'package:misc_app/Account/EditProfile.dart';
import 'package:misc_app/Account/HelpSupport.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(children: [
            const SizedBox(height: 29),
            const CircleAvatar(
              radius: 38,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/account/01.png'),
                radius: 35,
              ),
            ),
            const SizedBox(height: 13),
            const Text(
              '9595959595',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 3),
            const Text(
              'Muhammed Aslah',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            const SizedBox(height: 45),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditProfile()));
                },
                child: Container(
                  width: double.infinity,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.person_rounded,
                        size: 29,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Container(
                    width: double.infinity,
                    height: 1,
                    color: const Color.fromARGB(255, 224, 224, 224)),
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Booking()));
                },
                child: Container(
                  width: double.infinity,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.next_week,
                        size: 29,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'My Booking',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Container(
                    width: double.infinity,
                    height: 1,
                    color: const Color.fromARGB(255, 224, 224, 224)),
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HelpSupport()));
                },
                child: Container(
                  width: double.infinity,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.headset_mic,
                        size: 29,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Help & Support',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
