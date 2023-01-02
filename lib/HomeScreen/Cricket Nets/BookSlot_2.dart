import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:table_calendar/table_calendar.dart';

class BookSlot_2 extends StatefulWidget {
  const BookSlot_2({super.key});

  @override
  State<BookSlot_2> createState() => _BookSlot_2State();
}

class _BookSlot_2State extends State<BookSlot_2> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

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
          'Book Slot',
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '₹\t2500',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 150,
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
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          Row(
            children: const [
              Expanded(
                flex: 3,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/homescreen/img1.jpg'),
                    radius: 38,
                  ),
                ),
              ),
              SizedBox(width: 13),
              Expanded(
                flex: 7,
                child: Text(
                  'Turf Football',
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 22.5,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              width: double.infinity,
              height: 1,
              color: const Color.fromARGB(255, 224, 224, 224)),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Select Date',
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 10, left: 10),
            child: Container(
              width: double.infinity,
              height: 310,
              child: TableCalendar(
                locale: "en_Us",
                rowHeight: 35,
                calendarStyle: const CalendarStyle(
                  weekendTextStyle:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                  defaultTextStyle:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                  selectedDecoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                ),
                daysOfWeekVisible: true,
                daysOfWeekHeight: 35,
                daysOfWeekStyle: const DaysOfWeekStyle(
                    weekendStyle:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                    weekdayStyle:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w300)),
                headerStyle: const HeaderStyle(
                  titleTextStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  formatButtonVisible: false,
                  titleCentered: true,
                ),
                availableGestures: AvailableGestures.all,
                focusedDay: today,
                selectedDayPredicate: ((day) => isSameDay(day, today)),
                firstDay: DateTime.utc(2020, 10, 10),
                lastDay: DateTime.utc(2030, 10, 10),
                onDaySelected: _onDaySelected,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Text(
                    'Start Time',
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Text(
                      '00:00 AM',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'End Time',
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Text(
                      '00:00 AM',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
