import 'package:event_app/screens/event_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class EventsInfoWidget extends StatefulWidget {
  final String title;
  final String time;
  final String date;
  final String address;
  final String imagePath;
  final bool isSlidable;

   const EventsInfoWidget(
      {Key? key, required this.title,
      required this.date,
      required this.address,
      required this.imagePath,
      required this.time,
      required this.isSlidable}) : super(key: key);

  @override
  _EventsInfoWidgetState createState() => _EventsInfoWidgetState();
}

class _EventsInfoWidgetState extends State<EventsInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.isSlidable == true
        ? Slidable(
            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  backgroundColor: const Color(0xFFFE4A49),
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                  onPressed: (BuildContext context) {},
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const EventDetails()));
                },
                child: Row(
                  children: [
                    SizedBox(
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
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.title,
                            style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600)),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_today_rounded,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(widget.date,
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.access_time,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(widget.time,
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(widget.address,
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EventDetails()));
              },
              child: Row(
                children: [
                  SizedBox(
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
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.title,
                          style: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600)),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_today_rounded,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(widget.date,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300)),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.access_time,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(widget.time,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300)),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(widget.address,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
  }
}
