import 'package:event_app/screens/profile_setup.dart';
import 'package:event_app/widgets/raised_button.dart';
import 'package:flutter/material.dart';

class LocationAccess extends StatefulWidget {
  const LocationAccess({Key? key}) : super(key: key);

  @override
  _LocationAccessState createState() => _LocationAccessState();
}

class _LocationAccessState extends State<LocationAccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 176, left: 36, right: 36, bottom: 30),
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/images/location-access.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Location Access',
                  style: TextStyle(
                      fontSize: 21,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'Let event app access your location to show you nearby events',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff7E7E7E),
                      fontWeight: FontWeight.w400)),
              const SizedBox(
                height: 40,
              ),
              RaisedButtonWidget(
                buttonText: 'Enable Location',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ProfileSetup()));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Don’t Enable',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
    );
  }
}
