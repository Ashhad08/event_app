import 'package:event_app/widgets/bottom_navigation.dart';
import 'package:event_app/widgets/raised_button.dart';
import 'package:flutter/material.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({Key? key}) : super(key: key);

  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BottomNavigationWidget()));
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Hackathon',
                  style: TextStyle(
                      fontSize: 21,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/event2.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.calendar_today_rounded,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Jan 10, 2022',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300)),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.access_time,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('12:30PM',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300)),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Ayub Pak, pindi ',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300)),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Information',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600)),
              const Text(
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,'
                  ' sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam'
                  ' erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea '
                  'rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor'
                  ' sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy '
                  'eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.'
                  ' At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren,'
                  ' no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,'
                  ' consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et '
                  'dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo'
                  ' dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem '
                  'ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed '
                  'diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam'
                  ' voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd '
                  'gubergren, no sea.',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      color: Color(0xff7E7E7E),
                      fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
          child: RaisedButtonWidget(
            buttonText: 'Attend',
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
