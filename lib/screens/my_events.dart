import 'package:event_app/widgets/event_search_field.dart';
import 'package:event_app/widgets/events_with_info.dart';
import 'package:flutter/material.dart';

class MyEvents extends StatefulWidget {
  const MyEvents({Key? key}) : super(key: key);

  @override
  _MyEventsState createState() => _MyEventsState();
}

class _MyEventsState extends State<MyEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                right: 30,
                left: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('My Events',
                      style: TextStyle(
                          fontSize: 21,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 5,
                  ),
                  Text('List of events you want to attend',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          color: Color(0xff7E7E7E),
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 10,
                  ),
                  EventSearchField(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            EventsInfoWidget(
              imagePath: 'assets/images/event1.png',
              title: 'PixaBay Event',
              date: 'Jan 10, 2022',
              address: 'Ayub Pak, pindi ',
              time: '12:30PM  ',
              isSlidable: true,
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            EventsInfoWidget(
              imagePath: 'assets/images/event2.png',
              title: 'Hackathon',
              date: 'Jan 10, 2022',
              address: 'Ayub Pak, pindi ',
              time: '12:30PM  ',
              isSlidable: true,
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            EventsInfoWidget(
              imagePath: 'assets/images/event1.png',
              title: 'PixaBay Event',
              date: 'Jan 10, 2022',
              address: 'Ayub Pak, pindi ',
              time: '12:30PM  ',
              isSlidable: true,
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
