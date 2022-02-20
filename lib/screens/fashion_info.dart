import 'package:event_app/screens/entertainment_info.dart';
import 'package:event_app/widgets/bottom_navigation.dart';
import 'package:event_app/widgets/info_list_tile.dart';
import 'package:event_app/widgets/raised_button.dart';
import 'package:flutter/material.dart';

class FashionInfo extends StatefulWidget {
  const FashionInfo({Key? key}) : super(key: key);

  @override
  _FashionInfoState createState() => _FashionInfoState();
}

class _FashionInfoState extends State<FashionInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const EntertainmentInfo()));
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
              const Text('Fashion Info',
                  style: TextStyle(
                      fontSize: 21,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 5,
              ),
              const Text('Enter your fashion information',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff7E7E7E),
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 20,
              ),
              InfoListTile(
                text: 'Shirt size',
              ),
              const SizedBox(
                height: 20,
              ),
              InfoListTile(
                text: 'Shoes size',
              ),
              const SizedBox(
                height: 20,
              ),
              InfoListTile(
                text: 'Fashion style',
              ),
              const SizedBox(
                height: 150,
              ),
              RaisedButtonWidget(
                  buttonText: "Save information",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavigationWidget()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
