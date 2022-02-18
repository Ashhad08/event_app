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
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
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
                children: [
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
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
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
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
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
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
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
            ),
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  RaisedButtonWidget(
                      buttonText: "View Result", onPressed: () {}),
                  SizedBox(
                    height: 7,
                  ),
                  Text('Clear Filter',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600)),
                  SizedBox(
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