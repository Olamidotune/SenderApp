import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sender_app/Screens/signup_page.dart';
import 'package:sender_app/colors.dart';
import 'package:sender_app/widgets/app_large_text.dart';

import '../widgets/apptext.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
              ),
              child: Row(
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
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27.0, right: 26),
              child: Column(
                children: [
                  AppLargeText(text: 'Sign In', size: 30),
                  const SizedBox(
                    height: 29,
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
                    height: 13,
                  ),
                  TextFormField(
                    // onChanged: (value) => setState(() => password = value),
                    // onFieldSubmitted: (value) =>
                    //     setState(() => password = value),
                    decoration: const InputDecoration(
                      fillColor: Color(0xFFF1F1F1),
                      filled: true,
                      hintText: 'Password',
                      // errorText:
                      //     'Password should be at least 5 characters long',
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
                    height: 24,
                  ),
                  Container(
                    // padding: EdgeInsets.only(top: 15, bottom: 16),
                    width: 322,
                    height: 47,
                    child: ElevatedButton(
                      onPressed: () {
                        // print('Email : ${emailController.text}');
                        // print('Password: $password');
                      },
                      child: AppText(
                          text: 'SIGN IN', color: Colors.white, size: 13),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF701D65),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: AppText(
                        text: 'Forgot Password?', color: Colors.blue, size: 13),
                  ),
                  const SizedBox(
                    height: 76,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                    text: 'Don\'t have an account?',
                    color: AppColors.signingForm,
                    size: 14),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpPage(),
                      ),
                    );
                  },
                  child: AppText(
                      text: 'Get Started',
                      color: AppColors.buttonColor,
                      size: 14),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
