import 'package:flutter/material.dart';

class InfoListTile extends StatefulWidget {
  final String text;

   const InfoListTile({Key? key, required this.text}) : super(key: key);

  @override
  _InfoListTileState createState() => _InfoListTileState();
}

class _InfoListTileState extends State<InfoListTile> {
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
          style: const TextStyle(
              fontSize: 14, fontFamily: 'Poppins', fontWeight: FontWeight.w500),
        ),
        trailing: const Icon(
          Icons.arrow_drop_down_sharp,
          color: Colors.black,
        ),
      ),
    );
  }
}
