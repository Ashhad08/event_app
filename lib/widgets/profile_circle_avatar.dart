import 'package:flutter/material.dart';
class ProfileScreenCircleAvatar extends StatelessWidget {
  final String imagePath;

  ProfileScreenCircleAvatar({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(66),
              border: Border.all(color: Color(0xff5AB964))
          ) ,
          child: CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 95, left: 95),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 5,color: Colors.white)
            ),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xff5AB964),
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
