import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

import '../../../../core/util/validator.dart';
import '../../../welcome/presentation/widgets/get_started_wrapper.dart';
import 'customize_experience_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  DateTime _selectedDate = DateTime.parse('2023-12-23');

  @override
  Widget build(BuildContext context) {
    late String name;
    late String email;
    late String dob;

    return GetStartedWrapper(
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 26),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Create your account',
                  style: Theme.of(context).textTheme.headlineMedium),
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.18,
                      bottom: 10),
                  child: TextFormField(
                      decoration: InputDecoration(
                          label: const Text('Name'),
                          hintText: 'Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                      keyboardType: TextInputType.text,
                      validator: Validator.name,
                      onSaved: (value) => name = value!)),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
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
                      onSaved: (value) => dob = value!))
            ])),
        navigate: () {
          Navigator.push<void>(
              context,
              MaterialPageRoute(
                  builder: (context) => const CustomizeExperience()));
        });
  }
}
