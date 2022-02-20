import 'package:event_app/screens/filteration.dart';
import 'package:flutter/material.dart';

class EventSearchField extends StatelessWidget {
  const EventSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
          fontSize: 14, fontFamily: 'Poppins', fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Filteration()));
            },
            child: const Icon(Icons.filter_list)),
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search events',
        hintStyle: const TextStyle(
            fontSize: 14, fontFamily: 'Poppins', fontWeight: FontWeight.w500),
        fillColor: Colors.grey[100],
        filled: true,
        border: InputBorder.none,
        focusColor: const Color(0xff5AB964),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xff5AB964))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey, width: 0.5)),
      ),
    );
  }
}
