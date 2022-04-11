import 'package:flutter/cupertino.dart';

class AppLargeText extends StatelessWidget {
  int size;
  final String text;

  AppLargeText({
    Key? key,
    required this.text,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xFF701D65),
        fontSize: 28,
        fontFamily: 'Mulish-bold',
        fontWeight: FontWeight.w800,
      ),
      textAlign: TextAlign.center,
    );
  }
}
