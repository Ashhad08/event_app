import 'package:event_app/widgets/profile_circle_avatar.dart';
import 'package:event_app/widgets/update_in_profile.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Profile',
                      style: TextStyle(
                          fontSize: 21,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('You can update your profile info',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          color: Color(0xff7E7E7E),
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: ProfileScreenCircleAvatar(
                        imagePath: 'assets/images/profile2.png'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text('User Name',
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
            UpdateProfileWidget(
              infoText: 'Update Information',
            ),
            const Divider(),
            UpdateProfileWidget(
              infoText: 'Update Transportation',
            ),
            const Divider(),
            UpdateProfileWidget(
              infoText: 'Update Entertainment',
            ),
            const Divider(),
            UpdateProfileWidget(
              infoText: 'Update Fashion',
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
