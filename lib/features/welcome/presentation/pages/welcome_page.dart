import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../../../core/presentation/widgets/theme/theme.dart';
import '../../../signin/presentation/pages/signin_page.dart';
import '../../../signup/presentation/pages/sign_up.dart';
import 'localization_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width - 80,
                          height: 30,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Image.asset('assets/images/icon-480.png')),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.17),
                        child: Text(
                            "See what's happening in the world right now.",
                            style: Theme.of(context).textTheme.headlineLarge),
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          width: MediaQuery.of(context).size.width,
                          child: OutlinedButton(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Image.asset(
                                          height: 25,
                                          width: 25,
                                          'assets/images/google_logo.png'),
                                    ),
                                    Text('Continue with Google',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge)
                                  ]),
                              onPressed: () {
                                // final state = Provider.of<AuthState>(context, listen: false);
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) =>
                                //         Signup(loginCallback: state.getCurrentUser),
                                //   ),
                                // );
                              })),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(child: Divider(thickness: 1)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text('or')),
                            Expanded(child: Divider(thickness: 1))
                          ]),
                      Container(
                          margin: EdgeInsets.only(
                              top: 5,
                              bottom:
                                  MediaQuery.of(context).size.height * 0.02),
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              child: const Text('Create account'),
                              onPressed: () {
                                Navigator.push<void>(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LocalizationPage()));
                              })),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'By signing up, you agree to our ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: 'Terms, Privacy Policy ',
                            style: TextStyle(
                                color: TwitterColor.cerulean,
                                fontWeight: FontWeight.w500)),
                        TextSpan(
                            text: 'and ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: 'Cookie Use.',
                            style: TextStyle(
                                color: TwitterColor.cerulean,
                                fontWeight: FontWeight.w500))
                      ])),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.05),
                          child: Wrap(
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: <Widget>[
                                const Text('Have an account already?'),
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute<void>(
                                          builder: (context) =>
                                              const SignInPage(),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2, vertical: 10),
                                        child: Text(' Log in',
                                            style: TextStyle(
                                                color: TwitterColor.cerulean,
                                                fontWeight: FontWeight.w500))))
                              ]))
                    ]))));
  }
}
