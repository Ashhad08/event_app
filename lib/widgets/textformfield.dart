import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final bool isObscureText;
  final bool isSuffixIcon;
  final bool isPrefixIcon;
  final bool isFilled;
  IconData? prefixIcon;
  IconData? suffixIcon;
  String? hintText;
  final bool isHintText;
  Function(String)? validator;
  TextEditingController? controller;

  TextFormFieldWidget({
    required this.isObscureText,
    required this.isFilled,
    this.prefixIcon,
    required this.isSuffixIcon,
    required this.isPrefixIcon,
    required this.isHintText,
    this.hintText,
    this.suffixIcon,
    this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      validator: (val) => validator!(val!),
      controller: controller,
      style: TextStyle(
          fontSize: 14, fontFamily: 'Poppins', fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        border: InputBorder.none,
        fillColor: Colors.grey[100],
        filled: isFilled,
        suffixIcon: isSuffixIcon == true ? Icon(suffixIcon) : null,
        prefixIcon: isPrefixIcon == true ? Icon(prefixIcon) : null,
        hintText: isHintText == true ? hintText : null,
        hintStyle: TextStyle(
            fontSize: 14, fontFamily: 'Poppins', fontWeight: FontWeight.w500),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
              width: 0.5,
            )),
      ),
    );
  }
}
