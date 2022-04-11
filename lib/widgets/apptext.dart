import 'package:flutter/cupertino.dart';

class AppText extends StatelessWidget {
  int size;
  final String text;
  final Color color;

  AppText(
      {Key? key, required this.text, required this.color, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 14,
        fontFamily: 'Mulish-bold',
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.center,
    );
  }
}
