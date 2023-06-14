import 'package:flutter/material.dart';

import '../../../../core/util/validator.dart';
import '../../../welcome/presentation/widgets/get_started_wrapper.dart';
import 'confirm_password.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  late String otp = '';

  @override
  Widget build(BuildContext context) {
    return GetStartedWrapper(
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 26),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('We sent you a code',
                  style: Theme.of(context).textTheme.headlineMedium),
              const Text('Enter it below to verify samwillsquaye@gmail.com'),
              Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: TextFormField(
                      decoration: InputDecoration(
                          label: const Text('Verification Code'),
                          hintText: '123456',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                      keyboardType: TextInputType.text,
                      validator: Validator.code,
                      onSaved: (value) => otp = value!)),
              TextButton(
                  onPressed: () {}, child: const Text("Didn't receive email?"))
            ])),
        navigate: () {
          Navigator.push<void>(context,
              MaterialPageRoute(builder: (context) => const ConfirmPassword()));
        });
  }
}
