import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sender_app/Screens/signup_page.dart';
import 'package:sender_app/colors.dart';
import 'package:sender_app/widgets/app_large_text.dart';
import 'package:sender_app/widgets/apptext.dart';
import 'package:sender_app/widgets/responsive_buttons.dart';

class WelcomePageOne extends StatefulWidget {
  const WelcomePageOne({Key? key}) : super(key: key);

  @override
  _WelcomePageOneState createState() => _WelcomePageOneState();
}

class _WelcomePageOneState extends State<WelcomePageOne> {
  List images = [
    "welcomeone.svg",
    "welcometwo.svg",
    "welcomethree.svg",
  ];

  // List skip =[
  //   'Skip'
  // ];

  List textone = [
    'Deliver items on the same day.',
    'You’re not limited by size.',
    'Safe pick-up and drop-off',
  ];

  List texttwo = [
    'Timely delivery is our priority. Quriee is an on the way delivery platform that ensures your items arrive at your door step same day.',
    'With Quriee you can choose what category of vehicle will deliver your item.',
    'With Quriee’s code generated system you are assured of safe pick and drop off.'
  ];

  List printnext = ['Get Started'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            color: AppColors.textColor1,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 102.95,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: SvgPicture.asset('assets/svgs/' + images[index]),
                    ),
                    const SizedBox(
                      height: 52.7,
                    ),
                    SizedBox(
                      width: (268),
                      height: (90),
                      child: AppLargeText(
                        size: 28,
                        text: textone[index],
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    SizedBox(
                      width: 276,
                      height: 54,
                      child: AppText(
                          text: texttwo[index],
                          color: const Color(0xFF4E4E4E),
                          size: 13),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 98,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          width: index == indexDots ? 7 : 7,
                          height: 7,
                          decoration: BoxDecoration(
                            color: index == indexDots
                                ? AppColors.buttonColor
                                : const Color(0xFFC4C4C4),
                            borderRadius: BorderRadius.circular(7),
                          ),
                        );
                      }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpPage(),
                              ),
                            );
                          },
                          child: ResponsiveButtons(
                            width: 144,
                            text: 'NEXT',
                            color: Colors.white,
                          ),
                        ),
                        //continue with the 3 dots beside the responsive button.
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
