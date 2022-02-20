import 'package:event_app/screens/image_upload.dart';
import 'package:event_app/screens/profile_setup.dart';
import 'package:event_app/widgets/raised_button.dart';
import 'package:event_app/widgets/transportation_list_tile.dart';
import 'package:flutter/material.dart';

class Transportation extends StatefulWidget {
  const Transportation({Key? key}) : super(key: key);

  @override
  _TransportationState createState() => _TransportationState();
}

class _TransportationState extends State<Transportation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfileSetup()));
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text('Preferred Transportation',
                  style: TextStyle(
                      fontSize: 21,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 5,
              ),
              const Text('Enter your Transportation details',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff7E7E7E),
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 20,
              ),
              TransportationListTile(
                text: 'Uber',
              ),
              const SizedBox(
                height: 20,
              ),
              TransportationListTile(
                text: 'Lyft',
              ),
              const SizedBox(
                height: 20,
              ),
              TransportationListTile(
                text: 'Personal Vehicle ',
              ),
              const SizedBox(
                height: 20,
              ),
              TransportationListTile(
                text: 'Other',
              ),
              const SizedBox(
                height: 100,
              ),
              RaisedButtonWidget(
                  buttonText: 'Continue',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ImageUpload()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
