import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../signup/presentation/pages/sign_up.dart';

class LocalizationPage extends StatelessWidget {
  const LocalizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
            title: Container(
                height: 30,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset('assets/images/icon-480.png'))),
        bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10)),
                      child: Text('Skip for now',
                          style: Theme.of(context).textTheme.labelLarge)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push<void>(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SignUpPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 5)),
                      child: const Text('Next'))
                ])),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 26),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Select your language(s)',
                  style: Theme.of(context).textTheme.headlineMedium),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                      'Select the language(s) you want to use to personalize your twitter experience.')),
              CupertinoSearchTextField(
                  onChanged: (value) {},
                  onSubmitted: (value) {},
                  placeholder: 'Search languages',
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(Icons.search, size: 26),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  borderRadius: BorderRadius.circular(30)),
              ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  itemBuilder: (context, index) => ListTile(
                        title: Text('English - English',
                            style: Theme.of(context).textTheme.labelLarge),
                        trailing: Checkbox(value: false, onChanged: (value) {}),
                      )),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Text('Show more',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(decoration: TextDecoration.underline)))
            ])));
  }
}
