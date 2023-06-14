import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

import '../../../../core/presentation/widgets/theme/theme.dart';
import '../../../../core/util/validator.dart';
import 'verify_email.dart';

class ConfirmSignUpPage extends StatefulWidget {
  const ConfirmSignUpPage({super.key});

  @override
  State<ConfirmSignUpPage> createState() => _ConfirmSignUpPageState();
}

class _ConfirmSignUpPageState extends State<ConfirmSignUpPage> {
  DateTime _selectedDate = DateTime.parse('2023-12-23');

  @override
  Widget build(BuildContext context) {
    late String name;
    late String email;
    late String dob;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            title: Container(
                height: 30,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset('assets/images/icon-480.png'))),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 26),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Create your account',
                  style: Theme.of(context).textTheme.headlineMedium),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 10),
                child: TextFormField(
                    controller: TextEditingController(text: 'Samuel'),
                    decoration: InputDecoration(
                        label: const Text('Name'),
                        hintText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                    keyboardType: TextInputType.text,
                    validator: Validator.name,
                    onSaved: (value) => name = value!),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                      controller: TextEditingController(
                          text: 'samwillsquaye@gmail.com'),
                      decoration: InputDecoration(
                          label: const Text('Email'),
                          hintText: 'Email Address',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                      keyboardType: TextInputType.text,
                      validator: Validator.email,
                      onSaved: (value) => email = value!)),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                      decoration: InputDecoration(
                          label: const Text('Date of Birth'),
                          hintText: 'Date of Birth',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                      keyboardType: TextInputType.none,
                      controller: TextEditingController(
                          text:
                              DateFormat.yMMMMd('en_US').format(_selectedDate)),
                      onTap: () => showModalBottomSheet<void>(
                          context: context,
                          builder: (context) => SizedBox(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              child: Column(children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                          child: const Text('Done'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          })
                                    ]),
                                Expanded(
                                    child: ScrollDatePicker(
                                        selectedDate: _selectedDate,
                                        locale: const Locale('en'),
                                        maximumDate: DateTime.now(),
                                        options: const DatePickerOptions(
                                            itemExtent: 40),
                                        onDateTimeChanged: (DateTime value) {
                                          setState(() {
                                            _selectedDate = value;
                                          });
                                        }))
                              ])),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20)))),
                      onSaved: (value) => dob = value!)),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1),
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'By signing up, you agree to our ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                          color: TwitterColor.cerulean,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: ', Privacy Policy and ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'Cookie Use',
                      style: TextStyle(
                          color: TwitterColor.cerulean,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                      text:
                          '. Twitter may user your contact information, including your email address and phone number for purposes outlined in our Privacy and Policy. like keeping your account sercure and personalizing our services, including ads.',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: ' Learn more',
                      style: TextStyle(
                          color: TwitterColor.cerulean,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                      text:
                          ' Others will be able to find you by email or phone number. when provided. unless you choose otherwise',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: ' here.',
                      style: TextStyle(
                          color: TwitterColor.cerulean,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ])),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: 5,
                      bottom: MediaQuery.of(context).size.height * 0.02),
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          backgroundColor: TwitterColor.dodgeBlue),
                      child: const Text('Sign Up'),
                      onPressed: () {
                        Navigator.push<void>(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VerifyEmail()));
                      }))
            ])));
  }
}
