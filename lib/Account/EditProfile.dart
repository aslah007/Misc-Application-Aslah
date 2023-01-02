import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String? gender;
  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2050));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: const Color.fromARGB(255, 0, 0, 0),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: Column(
            children: <Widget>[
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 100),
                    const CircleAvatar(
                      radius: 47,
                      backgroundColor: Colors.blue,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/account/01.png'),
                        radius: 44,
                      ),
                    ),
                    const SizedBox(height: 13),
                    Text(
                      'Change Profile Picture',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 14, color: Colors.blue.shade400),
                    ),
                    const SizedBox(height: 45),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          const TextField(
                              decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Your Name',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                                color: Colors.blueGrey),

                            icon: Icon(
                              Icons.person_rounded,
                              color: Colors.blueGrey,
                            ), //icon at head of input
                          )),
                          Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.blueGrey),
                          const TextField(
                              decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Email (Optional)',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                                color: Colors.blueGrey),

                            icon: Icon(
                              Icons.email_rounded,
                              color: Colors.blueGrey,
                            ), //icon at head of input
                          )),
                          Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.blueGrey),
                          TextField(
                              readOnly: true,
                              onTap: _showDatePicker,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter Your Date of Birth (Optional)',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16,
                                    color: Colors.blueGrey),

                                icon: Icon(
                                  Icons.cake_rounded,
                                  color: Colors.blueGrey,
                                ), //icon at head of input
                              )),
                          Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.blueGrey),
                          Row(
                            children: [
                              const Icon(
                                Icons.face_rounded,
                                color: Colors.blueGrey,
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: "male",
                                    groupValue: gender,
                                    onChanged: (value) {
                                      setState(() {
                                        gender = value.toString();
                                      });
                                    },
                                  ),
                                  const Text(
                                    'MALE',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: "female",
                                    groupValue: gender,
                                    onChanged: (value) {
                                      setState(() {
                                        gender = value.toString();
                                      });
                                    },
                                  ),
                                  const Text(
                                    'FEMALE',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: "other",
                                    groupValue: gender,
                                    onChanged: (value) {
                                      setState(() {
                                        gender = value.toString();
                                      });
                                    },
                                  ),
                                  const Text(
                                    'OTHER',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.blueGrey),
                          const TextField(
                              decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Something About You (Optional)',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                                color: Colors.blueGrey),

                            icon: Icon(
                              Icons.person_pin,
                              color: Colors.blueGrey,
                            ), //icon at head of input
                          )),
                          Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.blueGrey),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
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
        ),
      ),
    );
  }
}
