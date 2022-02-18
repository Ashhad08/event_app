import 'package:flutter/material.dart';

class RaisedButtonWidget extends StatelessWidget {
  final String buttonText;

  final VoidCallback onPressed;

  RaisedButtonWidget({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      child: RaisedButton(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Color(0xff5AB964),
        onPressed: () => onPressed(),
        child: Text(buttonText,
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                color: Colors.white,
                fontWeight: FontWeight.w500)),
      ),
    );
  }
}
