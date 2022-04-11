import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sender_app/Screens/signup_page.dart';
import 'package:sender_app/Screens/tandc_page.dart';
import 'package:sender_app/widgets/apptext.dart';

import '../colors.dart';
import '../widgets/app_large_text.dart';
import 'signin_page.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 27.5, right: 26.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: AppColors.textColor1,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            Column(
              children: [
                AppLargeText(
                  text: 'Get Started',
                  size: 34,
                ),
                const SizedBox(
                  height: 24,
                ),
                AppText(
                  text: 'Verify',
                  color: Colors.black,
                  size: 18,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Please Enter the 6 digit OTP\n sent to you via SMS',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65, right: 64.67),
              child: Row(
                children: const [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color(0xFFECECEC), filled: true),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  SizedBox(
                    width: 10.67,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color(0xFFECECEC), filled: true),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  SizedBox(
                    width: 10.67,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color(0xFFECECEC), filled: true),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  SizedBox(
                    width: 10.67,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color(0xFFECECEC), filled: true),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  SizedBox(
                    width: 10.67,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color(0xFFECECEC), filled: true),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  SizedBox(
                    width: 10.67,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Color(0xFFECECEC), filled: true),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 37,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Did not receive OTP code?',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Colors.grey.shade800),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Resend'),
                ),
              ],
            ),
            const SizedBox(
              height: 53,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27.0, right: 26),
              child: Container(
                // padding: EdgeInsets.only(top: 15, bottom: 16),
                width: 322,
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    // print('Email : ${emailController.text}');
                    // print('Password: $password');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TermsAndConditionPage(),
                      ),
                    );
                  },
                  child: AppText(text: 'NEXT', color: Colors.white, size: 13),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF701D65),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
