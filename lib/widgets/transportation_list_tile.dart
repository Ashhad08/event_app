import 'package:flutter/material.dart';

class TransportationListTile extends StatefulWidget {
  final String text;

   const TransportationListTile({Key? key, required this.text}) : super(key: key);

  @override
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
          borderRadius: BorderRadius.circular(5),
        ),
        child: CheckboxListTile(
          value: isChecked,
          onChanged: (isChecked) {
            setState(() {
              this.isChecked = isChecked!;
            });
          },
          title: Text(
            widget.text,
            style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
          ),
          activeColor: const Color(0xffdbf0de),
          checkColor: const Color(0xff5AB964),
          controlAffinity: ListTileControlAffinity.leading,
        ));
  }
}
