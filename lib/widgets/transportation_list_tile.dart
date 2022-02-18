import 'package:flutter/material.dart';

class TransportationListTile extends StatefulWidget {
  @override
  final String text;

  TransportationListTile({required this.text});

  _TransportationListTileState createState() => _TransportationListTileState();
}

class _TransportationListTileState extends State<TransportationListTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          widget.text,
          style: TextStyle(
              fontSize: 14, fontFamily: 'Poppins', fontWeight: FontWeight.w500),
        ),
        leading: Checkbox(
          activeColor: Color(0xffdbf0de),
          checkColor: Color(0xff5AB964),
          side: BorderSide(color: Color(0xff5AB964)),
          value: isChecked,
          onChanged: (isChecked) {
            setState(() {
              this.isChecked = isChecked!;
            });
          },
        ),
      ),
    );
  }
}
