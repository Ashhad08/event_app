import 'package:event_app/screens/event_screen.dart';
import 'package:event_app/screens/my_events.dart';
import 'package:event_app/screens/profile.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  List<Widget> screenList = [
    const EventScreen(),
    const MyEvents(),
    const Profile(),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xff5AB964),
        elevation: 5,
        selectedLabelStyle: const TextStyle(
            fontSize: 12, fontFamily: 'Poppins', fontWeight: FontWeight.w300),
        unselectedLabelStyle: const TextStyle(
            fontSize: 12, fontFamily: 'Poppins', fontWeight: FontWeight.w300),
        items: const [
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
      body: screenList.elementAt(_selectedIndex),
    );
  }
}
