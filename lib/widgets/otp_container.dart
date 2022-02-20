import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPContainer extends StatelessWidget {
  const OTPContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: 38,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
