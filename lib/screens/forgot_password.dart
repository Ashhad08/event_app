import 'package:event_app/screens/login.dart';
import 'package:event_app/screens/verification.dart';
import 'package:event_app/widgets/raised_button.dart';
import 'package:event_app/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Login()));
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 200,
                    ),
                    Center(
                      child: Image(
                        image: AssetImage('assets/images/fgt-pass.png'),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26, width: 0.2),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(
                              child: Text('Restore your password',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500))),
                          const SizedBox(
                            height: 5,
                          ),
                          const Center(
                              child: Text(
                                  'Enter your email to reset your password',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      color: Color(0xff7E7E7E),
                                      fontWeight: FontWeight.w300))),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormFieldWidget(
                            isFilled: false,
                            isPrefixIcon: false,
                            isHintText: false,
                            controller: _emailController,
                            validator: (val) {
                              if (val.isEmpty) {
                                return "Kindly Enter Your Email";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          RaisedButtonWidget(
                            buttonText: "Continue",
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Verification()));
                              }
                            },
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
      ),
    );
  }
}
