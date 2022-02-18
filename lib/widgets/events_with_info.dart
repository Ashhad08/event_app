import 'package:flutter/material.dart';

class EventsInfoWidget extends StatefulWidget {
  @override
  final String title;
  final String time;
  final String date;
  final String address;
  final String imagePath;

  EventsInfoWidget(
      {required this.title,
      required this.date,
      required this.address,
      required this.imagePath,
      required this.time});

  _EventsInfoWidgetState createState() => _EventsInfoWidgetState();
}

class _EventsInfoWidgetState extends State<EventsInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 110,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(widget.imagePath),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title,
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Icon(
                    Icons.calendar_today_rounded,
                    size: 20,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(widget.date,
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300)),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(widget.time,
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300)),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(widget.address,
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
