import 'package:flutter/material.dart';

import '../../../../core/presentation/widgets/theme/theme.dart';
import '../../../welcome/presentation/widgets/get_started_wrapper.dart';
import 'confirm_signup.dart';

class CustomizeExperience extends StatelessWidget {
  const CustomizeExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return GetStartedWrapper(
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 26),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text('Customise your experience',
                    style: Theme.of(context).textTheme.headlineSmall),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                      'Track where you see Twitter content across the web',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(fontWeight: FontWeight.w800))),
              ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  title: Text(
                      'Twitter uses this data to personalise your experience. This web browsing history will never be stored with your name, email, or phone number.',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(fontWeight: FontWeight.w800)),
                  trailing: Checkbox(value: false, onChanged: (value) {})),
              Text.rich(TextSpan(children: [
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
                        '. Twitter may user your contact information, including your email address and phone number for purposes outlined in our Privacy and Policy.',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: ' Learn more',
                    style: TextStyle(
                        color: TwitterColor.cerulean,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ])),
            ])),
        navigate: () {
          Navigator.push<void>(
              context,
              MaterialPageRoute(
                  builder: (context) => const ConfirmSignUpPage()));
        });
  }
}
