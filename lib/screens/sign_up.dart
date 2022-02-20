import 'package:event_app/screens/login.dart';
import 'package:event_app/widgets/raised_button.dart';
import 'package:event_app/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _phoneNumberController = TextEditingController();
    TextEditingController _pswdController = TextEditingController();
    TextEditingController _confirmpswdController = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 36.0, right: 36, top: 149, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Sign up',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400)),
                const Text(
                  'Create new account',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Name',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  isFilled: true,
                  isPrefixIcon: false,
                  isHintText: false,
                  controller: _nameController,
                  validator: (val) {
                    if (val.isEmpty) {
                      return "Kindly Enter Your Name";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Email',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  isFilled: true,
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
                  height: 10,
                ),
                const Text('Phone Number',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  isFilled: true,
                  isPrefixIcon: false,
                  isHintText: false,
                  controller: _phoneNumberController,
                  validator: (val) {
                    if (val.isEmpty) {
                      return "Kindly Enter Your Phone Number";
                    } else if (val.length < 11) {
                      return "Kindly Enter Your Full Phone Number";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Password',
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
                  controller: _pswdController,
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
                  buttonText: 'Sign up',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      return;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('I Already have an account.',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Login()));
                      },
                      child: const Text('Sign in',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Color(0xff5AB964))),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
