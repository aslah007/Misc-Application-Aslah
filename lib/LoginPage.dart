import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:misc_app/OtpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        alignment: Alignment.centerLeft,
                        icon: const Icon(Icons.arrow_back,
                            color: Color.fromARGB(255, 0, 0, 0)),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.blue.shade800,
                          child: const Text(
                            '1',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.blue.shade400,
                          child: const Text(
                            '2',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Enter Mobile Number \nAnd Login',
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Enter Your Mobile Number',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Colors.blueGrey,
                      ),
                    ),
                    const SizedBox(height: 3),
                    InternationalPhoneNumberInput(
                      onInputChanged: (value) {},
                      cursorColor: Colors.blueGrey,
                      formatInput: false,
                      selectorConfig: const SelectorConfig(
                        showFlags: true,
                        selectorType: PhoneInputSelectorType.DROPDOWN,
                      ),
                      inputDecoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 15, left: 10),
                        border: InputBorder.none,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 2,
                      color: Colors.blueGrey,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OtpPage(),
                              ),
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color.fromARGB(255, 5, 126, 226),
                                  Color.fromARGB(255, 60, 159, 240),
                                ]),
                                borderRadius: BorderRadius.circular(8)),
                            child: const Text(
                              'NEXT',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'By Continuing, you agree to Our',
                      style: TextStyle(
                        // fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Terms & Conditions',
                          style: TextStyle(
                            // fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '&',
                          style: TextStyle(
                            // fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                            // fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
        ),
      )),
    );
  }
}
