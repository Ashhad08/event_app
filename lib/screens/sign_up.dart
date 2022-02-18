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
                Text('Sign up',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400)),
                Text(
                  'Create new account',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Name',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  isObscureText: false,
                  isSuffixIcon: false,
                  isFilled: true,
                  isPrefixIcon: false,
                  isHintText: false,
                  controller: _nameController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Kindly Enter Your Name";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Email',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  isObscureText: false,
                  isSuffixIcon: false,
                  isFilled: true,
                  isPrefixIcon: false,
                  isHintText: false,
                  controller: _emailController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Kindly Enter Your Email";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Phone Number',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  isObscureText: false,
                  isSuffixIcon: false,
                  isFilled: true,
                  isPrefixIcon: false,
                  isHintText: false,
                  suffixIcon: Icons.check,
                  controller: _phoneNumberController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Kindly Enter Your Phone Number";
                    } else if (val!.length < 11) {
                      return "Kindly Enter Your Full Phone Number";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Password',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  isObscureText: true,
                  isSuffixIcon: true,
                  isFilled: true,
                  isPrefixIcon: false,
                  isHintText: false,
                  suffixIcon: Icons.visibility_off,
                  controller: _pswdController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Kindly Enter Your Password";
                    } else if (val!.length < 7) {
                      return "Kindly Enter full passwrod";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Confirm Password',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  isObscureText: true,
                  isSuffixIcon: true,
                  isFilled: true,
                  isPrefixIcon: false,
                  isHintText: false,
                  suffixIcon: Icons.visibility_off,
                  controller: _confirmpswdController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Kindly Confirm Your password";
                    } else if (!(_confirmpswdController == _pswdController)) {
                      return 'Password Dose not matched!';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButtonWidget(
                  buttonText: 'Sign up',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('I Already have an account.',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500)),
                    Text('Sign in',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Color(0xff5AB964)))
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
