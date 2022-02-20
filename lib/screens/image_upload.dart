import 'package:event_app/screens/entertainment_info.dart';
import 'package:event_app/screens/transportation.dart';
import 'package:event_app/widgets/profile_circle_avatar.dart';
import 'package:event_app/widgets/raised_button.dart';
import 'package:flutter/material.dart';

class ImageUpload extends StatefulWidget {
  const ImageUpload({Key? key}) : super(key: key);

  @override
  _ImageUploadState createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Transportation()));
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
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text('Upload Image',
                  style: TextStyle(
                      fontSize: 21,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 5,
              ),
              const Text('Upload Identifiable image',
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
                  imagePath: 'assets/images/profile1.png',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text('User Name',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: 150,
              ),
              RaisedButtonWidget(
                  buttonText: 'Continue',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EntertainmentInfo()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
