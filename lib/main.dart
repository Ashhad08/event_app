import 'package:event_app/screens/login.dart';
import 'package:event_app/screens/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EventApp());
}

class EventApp extends StatelessWidget {
  const EventApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home:SplashScreen(),
      home: Login(),
    );
  }
}
