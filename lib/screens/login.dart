import 'package:event_app/widgets/raised_button.dart';
import 'package:event_app/widgets/textformfield.dart';
import 'package:flutter/material.dart';

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
                Text('Login',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400)),
                Text(
                  'Access account',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Email',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 10,
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
                  height: 20,
                ),
                Text('Password',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                    isObscureText: true,
                    isSuffixIcon: true,
                    isFilled: true,
                    isPrefixIcon: false,
                    suffixIcon: Icons.visibility_off,
                    isHintText: false,
                    controller: _pswdController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Kindly Enter Your Password";
                      } else if (val!.length < 7) {
                        return "Kindly Enter full passwrod";
                      } else {
                        return null;
                      }
                    }),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot your password?',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                RaisedButtonWidget(
                  buttonText: 'Sign in',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('I don\'t have an account.',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500)),
                    Text('Sign up',
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
