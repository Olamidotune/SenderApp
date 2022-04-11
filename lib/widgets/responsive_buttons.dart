import 'package:flutter/cupertino.dart';
import 'package:sender_app/colors.dart';
import 'package:sender_app/widgets/apptext.dart';

class ResponsiveButtons extends StatelessWidget {
  bool? isResponsive;
  double? width;
  final String text;
  final Color color;

  ResponsiveButtons({
    Key? key,
    this.width,
    this.isResponsive = false,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(04),
            color: AppColors.buttonColor),
        width: width,
        height: 47,
        child: AppText(
          size: 13,
          text: text,
          color: color,
        ));
  }
}
