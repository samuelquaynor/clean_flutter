import 'package:flutter/material.dart';

class GetStartedWrapper extends StatelessWidget {
  const GetStartedWrapper(
      {required this.body,
      this.navigate,
      this.skip = false,
      this.leading,
      super.key});

  final Widget body;
  final bool skip;
  final Widget? leading;
  final VoidCallback? navigate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
            leading: leading,
            title: Container(
                height: 30,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset('assets/images/icon-480.png'))),
        bottomNavigationBar: navigate != null
            ? Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                    mainAxisAlignment: skip
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.end,
                    children: [
                      if (skip)
                        OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10)),
                            child: Text('Skip for now',
                                style: Theme.of(context).textTheme.labelLarge))
                      else
                        const SizedBox.shrink(),
                      ElevatedButton(
                          onPressed: navigate,
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 5)),
                          child: const Text('Next'))
                    ]))
            : const SizedBox.shrink(),
        body: body);
  }
}
