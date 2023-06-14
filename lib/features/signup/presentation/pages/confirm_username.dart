import 'package:flutter/material.dart';
import 'package:nil/nil.dart';

import '../../../../core/util/validator.dart';
import '../../../welcome/presentation/widgets/get_started_wrapper.dart';

class ConfirmUsername extends StatefulWidget {
  const ConfirmUsername({super.key});

  @override
  State<ConfirmUsername> createState() => _ConfirmUsernameState();
}

class _ConfirmUsernameState extends State<ConfirmUsername> {
  late String password = '';
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return GetStartedWrapper(
        leading: nil,
        skip: true,
        navigate: () => Navigator.push<void>(
            context, MaterialPageRoute(builder: (context) => Container())),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 26),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('What should we call you?',
                  style: Theme.of(context).textTheme.headlineMedium),
              const Text(
                  'Your @username is unique. You can always change it later.'),
              Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: TextFormField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                          label: const Text('Username'),
                          hintText: 'JohnDoe',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                      keyboardType: TextInputType.text,
                      validator: Validator.name,
                      onSaved: (value) => password = value!))
            ])));
  }
}
