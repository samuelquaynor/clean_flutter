import 'package:flutter/material.dart';
import 'package:nil/nil.dart';

import '../../../../core/util/validator.dart';
import '../../../welcome/presentation/widgets/get_started_wrapper.dart';
import 'confirm_username.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  late String password = '';
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return GetStartedWrapper(
        leading: nil,
        navigate: () => Navigator.push<void>(context,
            MaterialPageRoute(builder: (context) => const ConfirmUsername())),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 26),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("You'll need a password",
                  style: Theme.of(context).textTheme.headlineMedium),
              const Text("Make sure it's 8 characters or more."),
              Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: TextFormField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                          label: const Text('Password'),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                              child: Icon(
                                  _isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey)),
                          hintText: 'Password123',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                      keyboardType: TextInputType.text,
                      validator: Validator.password,
                      onSaved: (value) => password = value!))
            ])));
  }
}
