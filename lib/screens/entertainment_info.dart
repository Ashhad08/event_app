import 'package:event_app/screens/fashion_info.dart';
import 'package:event_app/screens/image_upload.dart';
import 'package:event_app/widgets/info_list_tile.dart';
import 'package:event_app/widgets/raised_button.dart';
import 'package:flutter/material.dart';

class EntertainmentInfo extends StatefulWidget {
  const EntertainmentInfo({Key? key}) : super(key: key);

  @override
  _EntertainmentInfoState createState() => _EntertainmentInfoState();
}

class _EntertainmentInfoState extends State<EntertainmentInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ImageUpload()));
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
              const Text('Entertainment Info',
                  style: TextStyle(
                      fontSize: 21,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 5,
              ),
              const Text('Enter your desired entertainment info',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff7E7E7E),
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 20,
              ),
              InfoListTile(
                text: 'Desired drink',
              ),
              const SizedBox(
                height: 20,
              ),
              InfoListTile(
                text: 'Entertainment type',
              ),
              const SizedBox(
                height: 20,
              ),
              InfoListTile(
                text: 'Seating type',
              ),
              const SizedBox(
                height: 20,
              ),
              InfoListTile(
                text: 'Desired ticket',
              ),
              const SizedBox(
                height: 150,
              ),
              RaisedButtonWidget(
                  buttonText: "Continue",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const FashionInfo()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
