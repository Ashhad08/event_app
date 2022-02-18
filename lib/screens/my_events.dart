import 'package:event_app/widgets/events_with_info.dart';
import 'package:event_app/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class MyEvents extends StatefulWidget {
  const MyEvents({Key? key}) : super(key: key);

  @override
  _MyEventsState createState() => _MyEventsState();
}

class _MyEventsState extends State<MyEvents> {
  int _selectedIndex = 0;

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
                children: [
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
                  TextFormFieldWidget(
                    isObscureText: false,
                    isFilled: true,
                    isSuffixIcon: true,
                    isPrefixIcon: true,
                    isHintText: true,
                    hintText: 'Search events',
                    prefixIcon: Icons.search,
                    suffixIcon: Icons.filter_list,
                  ),
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
            EventsInfoWidget(
              imagePath: 'assets/images/event2.png',
              title: 'Hackathon',
              date: 'Jan 10, 2022',
              address: 'Ayub Pak, pindi ',
              time: '12:30PM  ',
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
            EventsInfoWidget(
              imagePath: 'assets/images/event1.png',
              title: 'PixaBay Event',
              date: 'Jan 10, 2022',
              address: 'Ayub Pak, pindi ',
              time: '12:30PM  ',
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xff5AB964),
        elevation: 5,
        selectedLabelStyle: TextStyle(
            fontSize: 12, fontFamily: 'Poppins', fontWeight: FontWeight.w300),
        unselectedLabelStyle: TextStyle(
            fontSize: 12, fontFamily: 'Poppins', fontWeight: FontWeight.w300),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'All Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'My Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
