import 'package:event_app/screens/location_access.dart';
import 'package:event_app/screens/transportation.dart';
import 'package:event_app/widgets/raised_button.dart';
import 'package:event_app/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class ProfileSetup extends StatefulWidget {
  const ProfileSetup({Key? key}) : super(key: key);

  @override
  _ProfileSetupState createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _firstNameController = TextEditingController();
    TextEditingController _lastNameController = TextEditingController();
    TextEditingController _prefNameController = TextEditingController();
    TextEditingController _mailAddressController = TextEditingController();
    TextEditingController _otherNumberController = TextEditingController();
    TextEditingController _dobController = TextEditingController();
    TextEditingController _anniversaryDateController = TextEditingController();
    TextEditingController _highSchoolController = TextEditingController();
    TextEditingController _collegeNameController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LocationAccess()));
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
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Profile Setup',
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 5,
                ),
                const Text('Enter your profile information',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Color(0xff7E7E7E),
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextFormFieldWidget(
                        isFilled: true,
                        isPrefixIcon: false,
                        isHintText: true,
                        hintText: 'First name',
                        controller: _firstNameController,
                        validator: (val) {
                          if (val.isEmpty) {
                            return "Kindly Enter Your First Name";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormFieldWidget(
                        isFilled: true,
                        isPrefixIcon: false,
                        isHintText: true,
                        hintText: 'Last name',
                        controller: _lastNameController,
                        validator: (val) {
                          if (val.isEmpty) {
                            return "Kindly Enter Your Last Name";
                          } else {
                            return null;
                          }
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  isFilled: true,
                  isPrefixIcon: false,
                  hintText: 'Preferred Name',
                  isHintText: true,
                  controller: _prefNameController,
                  validator: (val) {
                    if (val.isEmpty) {
                      return "Kindly Enter Your Preferred Name";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  isFilled: true,
                  isPrefixIcon: false,
                  hintText: 'Mailing Address',
                  isHintText: true,
                  controller: _mailAddressController,
                  validator: (val) {
                    if (val.isEmpty) {
                      return "Kindly Enter Your Mailing Address";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  isFilled: true,
                  isPrefixIcon: false,
                  hintText: 'Other number',
                  isHintText: true,
                  controller: _otherNumberController,
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
                TextFormFieldWidget(
                  isFilled: true,
                  prefixIcon: Icons.calendar_today,
                  isPrefixIcon: true,
                  hintText: 'Date of birth',
                  isHintText: true,
                  controller: _dobController,
                  validator: (val) {
                    if (val.isEmpty) {
                      return "Kindly Enter Your Date of birth";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  isFilled: true,
                  prefixIcon: Icons.calendar_today,
                  isPrefixIcon: true,
                  hintText: 'Anniversary Date',
                  isHintText: true,
                  controller: _anniversaryDateController,
                  validator: (val) {
                    if (val.isEmpty) {
                      return "Kindly Enter Your Anniversary Date";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  isFilled: true,
                  isPrefixIcon: false,
                  hintText: 'High School',
                  isHintText: true,
                  controller: _highSchoolController,
                  validator: (val) {
                    if (val.isEmpty) {
                      return "Kindly Enter Your High School Name";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  isFilled: true,
                  isPrefixIcon: false,
                  hintText: 'Collage Name',
                  isHintText: true,
                  controller: _collegeNameController,
                  validator: (val) {
                    if (val.isEmpty) {
                      return "Kindly Enter Your Collage Name";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                RaisedButtonWidget(
                  buttonText: 'Continue',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Transportation()));
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
