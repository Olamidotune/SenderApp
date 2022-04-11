import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sender_app/Screens/otp_page.dart';
import 'package:sender_app/widgets/app_large_text.dart';
import 'package:sender_app/widgets/apptext.dart';

import '../colors.dart';
import 'signin_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  String password = '';
  bool isPasswordvisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 26,
                ),
                child: TextButton(
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
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27, right: 27),
            child: Column(
              children: [
                AppLargeText(
                  text: 'Get Started',
                  size: 34,
                ),
                const SizedBox(
                  height: 34,
                ),
                AppText(text: 'Sign Up Info', color: Colors.black, size: 18),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    fillColor: Color(0xFFF1F1F1),
                    filled: true,
                    hintText: 'Full name',
                    hintStyle: TextStyle(
                      color: Color(0xFF676767),
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 19, top: 13, bottom: 9),
                    border: (OutlineInputBorder()),
                  ),
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    fillColor: Color(0xFFF1F1F1),
                    filled: true,
                    hintText: 'Phone number',
                    // errorText: 'Invalid phone number',
                    hintStyle: TextStyle(
                      color: Color(0xFF676767),
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 19, top: 13, bottom: 9),
                    border: (OutlineInputBorder()),
                  ),
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    fillColor: Color(0xFFF1F1F1),
                    filled: true,
                    hintText: 'Email address',
                    // errorText: 'Invalid Email',
                    hintStyle: TextStyle(
                      color: Color(0xFF676767),
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 19, top: 13, bottom: 9),
                    border: (OutlineInputBorder()),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  onChanged: (value) => setState(() => password = value),
                  onFieldSubmitted: (value) => setState(() => password = value),
                  decoration: const InputDecoration(
                    fillColor: Color(0xFFF1F1F1),
                    filled: true,
                    hintText: 'Password',
                    // errorText: 'Password should be at least 5 characters long',
                    hintStyle: TextStyle(
                      color: Color(0xFF676767),
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 19, top: 13, bottom: 9),
                    border: (OutlineInputBorder()),
                    //Todo come back to turn suffixText to a button.
                    suffixText: 'SHOW',
                    suffixIconColor: Colors.blue,
                    suffixStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 8,
                        color: Colors.blue),
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(
                  height: 44,
                ),
                TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Referral Code (optional)',
                    ),
                    keyboardType: TextInputType.number),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  // padding: EdgeInsets.only(top: 15, bottom: 16),
                  width: 322,
                  height: 47,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Email : ${emailController.text}');
                      print('Password: $password');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OtpPage(),
                        ),
                      );
                    },
                    child: AppText(text: 'NEXT', color: Colors.white, size: 13),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF701D65),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
