import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final bool isPrefixIcon;
  IconData? prefixIcon;
  final bool isHintText;
  String? hintText;
  Function(String)? validator;
  TextEditingController? controller;
  final bool isFilled;
  bool isVisible;
  final bool isPasswordField;

  @override
  TextFormFieldWidget({Key? key,
    required this.isPrefixIcon,
    this.prefixIcon,
    required this.isHintText,
    this.hintText,
    this.validator,
    this.controller,
    required this.isFilled,
    this.isVisible = false,
    this.isPasswordField = false,
  }) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (val) => widget.validator!(val!),
      controller: widget.controller,
      obscureText: widget.isVisible,
      style: const TextStyle(
          fontSize: 14, fontFamily: 'Poppins', fontWeight: FontWeight.w300),
      decoration: InputDecoration(
        suffixIcon: widget.isPasswordField
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    widget.isVisible = !widget.isVisible;
                  });
                },
                child: widget.isVisible
                    ? const Icon(Icons.visibility_off_outlined)
                    : const Icon(Icons.visibility_outlined))
            : null,
        prefixIcon:
            widget.isPrefixIcon == true ? Icon(widget.prefixIcon) : null,
        hintText: widget.isHintText == true ? widget.hintText : null,
        hintStyle: const TextStyle(
            fontSize: 14, fontFamily: 'Poppins', fontWeight: FontWeight.w500),
        fillColor: Colors.grey[100],
        filled: widget.isFilled,
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xff5AB964))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey,width: 0.5)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red, width: 0.2)),
      ),
    );
  }
}
