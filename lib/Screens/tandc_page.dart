import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sender_app/Screens/signup_page.dart';
import 'package:sender_app/colors.dart';
import 'package:sender_app/widgets/app_large_text.dart';
import 'package:sender_app/widgets/apptext.dart';
import 'package:sender_app/widgets/responsive_buttons.dart';

class TermsAndConditionPage extends StatelessWidget {
  const TermsAndConditionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 35),
              child: SizedBox(
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargeText(text: 'Quriee terms of service', size: 20),
                    const SizedBox(
                      height: 25,
                    ),
                    const Center(
                        child: Text(
                      'Terms of service goes here',
                      style: TextStyle(fontSize: 20),
                    )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.only(left: 27, right: 35),
              child: AppText(
                  text: 'Do you agree to Qurrie\'s terms of service?',
                  color: Colors.black,
                  size: 14),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27.0, right: 35),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      // padding: EdgeInsets.only(top: 15, bottom: 16),
                      width: 163,
                      height: 47,
                      child: ElevatedButton(
                        onPressed: () {
                          // print('Email : ${emailController.text}');
                          // print('Password: $password');
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const TermsAndConditionPage(),
                          //   ),
                          // );
                        },
                        child: AppText(
                            text: 'I AGREE', color: Colors.white, size: 13),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF701D65),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: SizedBox(
                      // padding: EdgeInsets.only(top: 15, bottom: 16),
                      width: 163,
                      height: 47,
                      child: ElevatedButton(
                        onPressed: () {
                          // print('Email : ${emailController.text}');
                          // print('Password: $password');
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const TermsAndConditionPage(),
                          //   ),
                          // );
                        },
                        child: AppText(
                            text: 'I DO NOT AGREE',
                            color: Colors.white,
                            size: 13),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0x00ffffff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
