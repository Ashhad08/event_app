import 'package:event_app/widgets/bottom_navigation.dart';
import 'package:event_app/widgets/raised_button.dart';
import 'package:flutter/material.dart';

class Filteration extends StatefulWidget {
  const Filteration({Key? key}) : super(key: key);

  @override
  _FilterationState createState() => _FilterationState();
}

class _FilterationState extends State<Filteration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BottomNavigationWidget()));
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Filteration',
                      style: TextStyle(
                          fontSize: 21,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Filter events by date, time or location',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          color: Color(0xff7E7E7E),
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 40,
                  ),
                  Text('Select Date',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: const [
                  Icon(
                    Icons.calendar_today_rounded,
                    size: 20,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text('Jan 21, 2022',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: const [
                  Icon(
                    Icons.access_time,
                    size: 20,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text('12:20pm',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: const [
                  Icon(
                    Icons.location_on_outlined,
                    size: 20,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text('Ayub national park, 6th road, rwp',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  RaisedButtonWidget(
                      buttonText: "View Result", onPressed: () {}),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text('Clear Filter',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
