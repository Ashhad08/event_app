import 'package:event_app/screens/location_access.dart';
import 'package:event_app/screens/verification.dart';
import 'package:event_app/widgets/raised_button.dart';
import 'package:event_app/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _newPswdController = TextEditingController();
    TextEditingController _confirmpswdController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Verification()));
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
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
                      height: 90,
                    ),
                    Center(
                      child: Image(
                        image: AssetImage('assets/images/new-pswd.png'),
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
                              child: Text('Create New password',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500))),
                          const SizedBox(
                            height: 5,
                          ),
                          const Center(
                              child: Text('Enter your new password',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      color: Color(0xff7E7E7E),
                                      fontWeight: FontWeight.w300))),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text('New Password',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500)),
                          const SizedBox(
                            height: 5,
                          ),
                          TextFormFieldWidget(
                            isVisible: true,
                            isPasswordField: true,
                            isFilled: true,
                            isPrefixIcon: false,
                            isHintText: false,
                            controller: _newPswdController,
                            validator: (val) {
                              if (val.isEmpty) {
                                return "Kindly Enter Your Password";
                              } else if (val.length < 7) {
                                return "Kindly Enter full password";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Confirm Password',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500)),
                          const SizedBox(
                            height: 5,
                          ),
                          TextFormFieldWidget(
                            isPasswordField: true,
                            isVisible: true,
                            isFilled: true,
                            isPrefixIcon: false,
                            isHintText: false,
                            controller: _confirmpswdController,
                            validator: (val) {
                              if (val.isEmpty) {
                                return "Kindly Confirm Your password";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          RaisedButtonWidget(
                            buttonText: "Save",
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LocationAccess()));
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
