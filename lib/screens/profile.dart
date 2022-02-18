import 'package:event_app/widgets/profile_circle_avatar.dart';
import 'package:event_app/widgets/update_in_profile.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                  top: 40, left: 30, right: 30, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text('Profile',
                      style: TextStyle(
                          fontSize: 21,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 5,
                  ),
                  Text('You can update your profile info',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          color: Color(0xff7E7E7E),
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: ProfileScreenCircleAvatar(
                        imagePath: 'assets/images/profile2.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text('User Name',
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
            UpdateProfileWidget(infoText: 'Update Information',),
            Divider(
              height: 1,
            ),
            UpdateProfileWidget(infoText: 'Update Transportation',),
            Divider(
              height: 1,
            ),
            UpdateProfileWidget(infoText: 'Update Entertainment',),
            Divider(
              height: 1,
            ),
            UpdateProfileWidget(infoText: 'Update Fashion',),
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
