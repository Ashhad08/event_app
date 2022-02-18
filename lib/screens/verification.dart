import 'package:event_app/widgets/otp_container.dart';
import 'package:event_app/widgets/raised_button.dart';
import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: Image(
                      image: AssetImage('assets/images/verification.png'),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 0.2),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Center(
                            child: Text('Verification Code',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500))),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                            child: Text(
                                'Enter 6 digit code that you received on your email',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    color: Color(0xff7E7E7E),
                                    fontWeight: FontWeight.w300))),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OTPContainer(),
                            SizedBox(
                              width: 10,
                            ),
                            OTPContainer(),
                            SizedBox(
                              width: 10,
                            ),
                            OTPContainer(),
                            SizedBox(
                              width: 10,
                            ),
                            OTPContainer(),
                            SizedBox(
                              width: 10,
                            ),
                            OTPContainer(),
                            SizedBox(
                              width: 10,
                            ),
                            OTPContainer(),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RaisedButtonWidget(
                          buttonText: "Continue",
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: TextSpan(
                              text:
                                  'if you don’t receive the email in few minutes please check your spam folder or click ',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  color: Color(0xff7E7E7E),
                                  fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(
                                  text: 'here',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.underline),
                                ),
                                TextSpan(
                                  text: ' to receive another code',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      color: Color(0xff7E7E7E),
                                      fontWeight: FontWeight.w300),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
// child: Text(
//     'if you don’t receive the email in few minutes please check your spam folder or click here  to receive another code',
//     style: TextStyle(
//         fontSize: 14,
//         fontFamily: 'Poppins',
//         color: Color(0xff7E7E7E),
//         fontWeight: FontWeight.w300))),
