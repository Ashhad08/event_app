import 'package:event_app/screens/entertainment_info.dart';
import 'package:event_app/screens/event_details.dart';
import 'package:event_app/screens/event_screen.dart';
import 'package:event_app/screens/fashion_info.dart';
import 'package:event_app/screens/filteration.dart';
import 'package:event_app/screens/forgot_password.dart';
import 'package:event_app/screens/image_upload.dart';
import 'package:event_app/screens/location_access.dart';
import 'package:event_app/screens/login.dart';
import 'package:event_app/screens/my_events.dart';
import 'package:event_app/screens/new_password.dart';
import 'package:event_app/screens/profile.dart';
import 'package:event_app/screens/profile_setup.dart';
import 'package:event_app/screens/sign_up.dart';
import 'package:event_app/screens/splash_screen.dart';
import 'package:event_app/screens/transportation.dart';
import 'package:event_app/screens/verification.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EventApp());
}

class EventApp extends StatelessWidget {
  const EventApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home:SplashScreen(),
      //home: Login(),
      //home: SignUp(),
      //home: ForgotPassword(),
      // home: Verification(),
       //home: NewPassword(),
      //home: LocationAccess(),
      // home: ProfileSetup(),
      //home: Transportation(),
      //home: ImageUpload(),
      //home: EntertainmentInfo(),
      // home: FashionInfo(),
      // home: EventScreen(),
      // home: EventDetails(),
      // home: MyEvents(),
      // home: Filteration(),
      home: Profile(),
    );
  }
}
