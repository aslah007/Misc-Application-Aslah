import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PricingTable_2 extends StatelessWidget {
  const PricingTable_2({super.key});

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
          'Pricing',
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.blue,
              ),
              child: const Text(
                'PRICING',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            //Data Open
            const SizedBox(
              height: 6,
            ),
            _TableData(
              Txt1: '12:00 AM - 06:00 AM',
              Txt2: '₹\t1800/Hour',
            ),
            const SizedBox(
              height: 6,
            ),
            _TableData(
              Txt1: '06:00 AM - 09:00 AM',
              Txt2: '₹\t1200/Hour',
            ),
            const SizedBox(
              height: 6,
            ),
            _TableData(
              Txt1: '09:00 AM - 05:00 PM',
              Txt2: '₹\t1000/Hour',
            ),
            const SizedBox(
              height: 6,
            ),
            _TableData(
              Txt1: '05:00 PM - 07:00 PM',
              Txt2: '₹\t1500/Hour',
            ),
            const SizedBox(
              height: 6,
            ),
            _TableData(
              Txt1: '07:00 PM - 12:00 AM',
              Txt2: '₹\t1800/Hour',
              rR: const BorderRadius.only(bottomRight: Radius.circular(10)),
              rL: const BorderRadius.only(bottomLeft: Radius.circular(10)),
            ),
            //Data Close
          ],
        ),
      ),
    );
  }

  Row _TableData({var Txt1, var Txt2, var rL, var rR}) {
    return Row(
      children: [
        Expanded(
            flex: 6,
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(14, 0, 0, 0), borderRadius: rL),
              child: Text(
                Txt1,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            )),
        const SizedBox(
          width: 6,
        ),
        Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(14, 0, 0, 0), borderRadius: rR),
              child: Text(
                Txt2,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.blue.shade800,
                ),
              ),
            ))
      ],
    );
  }
}
