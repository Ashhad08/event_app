import 'package:event_app/screens/sign_up.dart';
import 'package:event_app/widgets/raised_button.dart';
import 'package:event_app/widgets/textformfield.dart';
import 'package:flutter/material.dart';

import 'forgot_password.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _pswdController = TextEditingController();
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
                const Text('Login',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400)),
                // ignore: prefer_const_constructors
                Text(
                  'Access account',
                  style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('Email',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  controller: _emailController,
                  validator: (val) {
                    if (val.isEmpty) {
                      return "Kindly Enter Your Email";
                    } else {
                      return null;
                    }
                  },
                  isHintText: false,
                  isFilled: true,
                  isPrefixIcon: false,
                  // onPwdTap: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Password',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  isPrefixIcon: false,
                  isHintText: false,
                  isFilled: true,
                  isVisible: true,
                  isPasswordField: true,
                  controller: _pswdController,
                  validator: (val) {
                    if (val.isEmpty) {
                      return "Kindly Enter Your Password";
                    } else if (val.length < 7) {
                      return "Kindly Enter full passwrod";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword()));
                      },
                      child: const Text('Forgot your password?',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                RaisedButtonWidget(
                  buttonText: 'Sign in',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      return;
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('I don\'t have an account.',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const SignUp()));
                      },
                      child: const Text('Sign up',
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
