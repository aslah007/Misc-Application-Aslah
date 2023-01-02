import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:misc_app/HomeScreen/Cricket%20Nets/CricketNets.dart';
import 'package:misc_app/HomeScreen/MembershipPlans.dart';
import 'package:misc_app/HomeScreen/Turf%20Football/TurfFootball.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const SizedBox(height: 15.0),

        //Carousel Start
        CarouselSlider(
          options: CarouselOptions(
            height: 190.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: [
            Container(
              margin:
                  const EdgeInsets.only(right: 3, left: 3, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/carousel/01.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(right: 3, left: 3, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/carousel/02.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(right: 3, left: 3, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/carousel/03.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(right: 3, left: 3, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/carousel/04.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        //Carousel Stop
        // Misc Member Button Start
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
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
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: const [
                    BoxShadow(
                        spreadRadius: 0.8,
                        blurRadius: 1,
                        color: Color.fromARGB(71, 0, 0, 0))
                  ],
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
                        'Be a Misc Member',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 17,
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
        // Misc Member Button Stop
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              'Games',
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        //Total Game List Start
        //Games List 1 Start
        Row(
          children: [
            const Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                )),
            Expanded(
              flex: 10,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TurfFootball(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: double.infinity,
                    height: 98,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          bottomLeft: Radius.circular(100)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 218, 217, 217),
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 0.0, //extend the shadow
                          offset: Offset(
                            -1.0, // Move to right 10  horizontally
                            2.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 8),
                        const Expanded(
                          flex: 3,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Color.fromARGB(255, 104, 104, 104),
                            child: CircleAvatar(
                              // backgroundColor: Colors.greenAccent[400],
                              backgroundImage: AssetImage(
                                  'assets/images/homescreen/img1.jpg'),
                              //  AssetImage('assets/avatar/img1'),
                              radius: 50,
                            ),
                          ),
                        ),
                        const SizedBox(width: 13),
                        const Expanded(
                          flex: 5,
                          child: Text(
                            'Turf\nFootball',
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 22.5,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: double.infinity,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                gradient: const LinearGradient(colors: [
                                  Color.fromARGB(255, 5, 126, 226),
                                  Color.fromARGB(255, 60, 159, 240),
                                ])),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'BOOK',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        //Games List 1 Stop
        const SizedBox(height: 30),
        //Games List 2 Start
        Row(
          children: [
            const Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                )),
            Expanded(
              flex: 10,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CricketNets(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: double.infinity,
                    height: 98,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          bottomLeft: Radius.circular(100)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 218, 217, 217),
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 0.0, //extend the shadow
                          offset: Offset(
                            -1.0, // Move to right 10  horizontally
                            2.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 8),
                        const Expanded(
                          flex: 3,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Color.fromARGB(255, 104, 104, 104),
                            child: CircleAvatar(
                              // backgroundColor: Colors.greenAccent[400],
                              backgroundImage: AssetImage(
                                  'assets/images/homescreen/img2.jpg'),
                              //  AssetImage('assets/avatar/img1'),
                              radius: 50,
                            ),
                          ),
                        ),
                        const SizedBox(width: 13),
                        const Expanded(
                          flex: 5,
                          child: Text(
                            'Cricket\nNets',
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 22.5,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: double.infinity,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                gradient: const LinearGradient(colors: [
                                  Color.fromARGB(255, 5, 126, 226),
                                  Color.fromARGB(255, 60, 159, 240),
                                ])),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'BOOK',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        //Games List 2 Stop
        const SizedBox(height: 30),
        //Games List 3 Start
        Row(
          children: [
            const Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                )),
            Expanded(
              flex: 10,
              child: Container(
                alignment: Alignment.centerRight,
                child: Container(
                  width: double.infinity,
                  height: 98,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomLeft: Radius.circular(100)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 218, 217, 217),
                        blurRadius: 2.0, // soften the shadow
                        spreadRadius: 0.0, //extend the shadow
                        offset: Offset(
                          -1.0, // Move to right 10  horizontally
                          2.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      const Expanded(
                        flex: 3,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 104, 104, 104),
                          child: CircleAvatar(
                            // backgroundColor: Colors.greenAccent[400],
                            backgroundImage:
                                AssetImage('assets/images/homescreen/img3.jpg'),
                            //  AssetImage('assets/avatar/img1'),
                            radius: 50,
                          ),
                        ),
                      ),
                      const SizedBox(width: 13),
                      const Expanded(
                        flex: 5,
                        child: Text(
                          'Turf\nCricket',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 22.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 5, 126, 226),
                                Color.fromARGB(255, 60, 159, 240),
                              ])),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'BOOK',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        //Games List 3 Stop
        const SizedBox(height: 30),
        //Games List 4 Start
        Row(
          children: [
            const Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                )),
            Expanded(
              flex: 10,
              child: Container(
                alignment: Alignment.centerRight,
                child: Container(
                  width: double.infinity,
                  height: 98,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomLeft: Radius.circular(100)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 218, 217, 217),
                        blurRadius: 2.0, // soften the shadow
                        spreadRadius: 0.0, //extend the shadow
                        offset: Offset(
                          -1.0, // Move to right 10  horizontally
                          2.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      const Expanded(
                        flex: 3,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 104, 104, 104),
                          child: CircleAvatar(
                            // backgroundColor: Colors.greenAccent[400],
                            backgroundImage: AssetImage(
                                'assets/images/homescreen/img4.jpeg'),
                            //  AssetImage('assets/avatar/img1'),
                            radius: 50,
                          ),
                        ),
                      ),
                      const SizedBox(width: 13),
                      const Expanded(
                        flex: 5,
                        child: Text(
                          'Sand\nSoccer',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 22.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 5, 126, 226),
                                Color.fromARGB(255, 60, 159, 240),
                              ])),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'BOOK',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        //Games List 4 Stop
        const SizedBox(height: 30),
        //Games List 5 Start
        Row(
          children: [
            const Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                )),
            Expanded(
              flex: 10,
              child: Container(
                alignment: Alignment.centerRight,
                child: Container(
                  width: double.infinity,
                  height: 98,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomLeft: Radius.circular(100)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 218, 217, 217),
                        blurRadius: 2.0, // soften the shadow
                        spreadRadius: 0.0, //extend the shadow
                        offset: Offset(
                          -1.0, // Move to right 10  horizontally
                          2.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      const Expanded(
                        flex: 3,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 104, 104, 104),
                          child: CircleAvatar(
                            // backgroundColor: Colors.greenAccent[400],
                            backgroundImage:
                                AssetImage('assets/images/homescreen/img5.jpg'),
                            //  AssetImage('assets/avatar/img1'),
                            radius: 50,
                          ),
                        ),
                      ),
                      const SizedBox(width: 13),
                      const Expanded(
                        flex: 5,
                        child: Text(
                          'Shuttle\nBadminton',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 22.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 5, 126, 226),
                                Color.fromARGB(255, 60, 159, 240),
                              ])),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'BOOK',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        //Games List 5 Stop
        const SizedBox(height: 30),
        //Games List 6 Start
        Row(
          children: [
            const Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                )),
            Expanded(
              flex: 10,
              child: Container(
                alignment: Alignment.centerRight,
                child: Container(
                  width: double.infinity,
                  height: 98,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomLeft: Radius.circular(100)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 218, 217, 217),
                        blurRadius: 2.0, // soften the shadow
                        spreadRadius: 0.0, //extend the shadow
                        offset: Offset(
                          -1.0, // Move to right 10  horizontally
                          2.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      const Expanded(
                        flex: 3,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 104, 104, 104),
                          child: CircleAvatar(
                            // backgroundColor: Colors.greenAccent[400],
                            backgroundImage: AssetImage(
                                'assets/images/homescreen/img6.jpeg'),
                            //  AssetImage('assets/avatar/img1'),
                            radius: 50,
                          ),
                        ),
                      ),
                      const SizedBox(width: 13),
                      const Expanded(
                        flex: 5,
                        child: Text(
                          'Wellness\nCenter',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 22.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 5, 126, 226),
                                Color.fromARGB(255, 60, 159, 240),
                              ])),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'BOOK',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        //Games List 6 Stop
        const SizedBox(height: 30),
        //Games List 7 Start
        Row(
          children: [
            const Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                )),
            Expanded(
              flex: 10,
              child: Container(
                alignment: Alignment.centerRight,
                child: Container(
                  width: double.infinity,
                  height: 98,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomLeft: Radius.circular(100)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 218, 217, 217),
                        blurRadius: 2.0, // soften the shadow
                        spreadRadius: 0.0, //extend the shadow
                        offset: Offset(
                          -1.0, // Move to right 10  horizontally
                          2.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      const Expanded(
                        flex: 3,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 104, 104, 104),
                          child: CircleAvatar(
                            // backgroundColor: Colors.greenAccent[400],
                            backgroundImage:
                                AssetImage('assets/images/homescreen/img7.jpg'),
                            //  AssetImage('assets/avatar/img1'),
                            radius: 50,
                          ),
                        ),
                      ),
                      const SizedBox(width: 13),
                      const Expanded(
                        flex: 5,
                        child: Text(
                          'Conference\nHall',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 22.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 5, 126, 226),
                                Color.fromARGB(255, 60, 159, 240),
                              ])),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'BOOK',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        //Games List 7 Stop
        const SizedBox(height: 30),
        //Games List 8 Start
        Row(
          children: [
            const Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                )),
            Expanded(
              flex: 10,
              child: Container(
                alignment: Alignment.centerRight,
                child: Container(
                  width: double.infinity,
                  height: 98,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomLeft: Radius.circular(100)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 218, 217, 217),
                        blurRadius: 2.0, // soften the shadow
                        spreadRadius: 0.0, //extend the shadow
                        offset: Offset(
                          -1.0, // Move to right 10  horizontally
                          2.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      const Expanded(
                        flex: 3,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 104, 104, 104),
                          child: CircleAvatar(
                            // backgroundColor: Colors.greenAccent[400],
                            backgroundImage:
                                AssetImage('assets/images/homescreen/img8.jpg'),
                            //  AssetImage('assets/avatar/img1'),
                            radius: 50,
                          ),
                        ),
                      ),
                      const SizedBox(width: 13),
                      const Expanded(
                        flex: 5,
                        child: Text(
                          'Kids Park',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 22.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 5, 126, 226),
                                Color.fromARGB(255, 60, 159, 240),
                              ])),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'BOOK',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        //Games List 8 Stop
        //Total Game List Stop
        const SizedBox(height: 40),
      ],
    );
  }
}
