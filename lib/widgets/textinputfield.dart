// import 'dart:ffi';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:sender_app/widgets/apptext.dart';
//
// class TextInputField extends StatelessWidget {
//   final String title;
//   final String hinText;
//   final Bool obscureText;
//   final IconData icon;
//   final int maxLength;
//   final Color colors;
//
//   const TextInputField(
//       {Key? key,
//       required this.title,
//       required this.hinText,
//       required this.obscureText,
//       required this.icon,
//       required this.maxLength,
//       required this.colors})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 27, right: 26),
//           child: AppText(
//             text: title,
//             color: colors,
//             size: 14,
//           ),
//         ),
//         TextFormField()
//       ],
//     );
//   }
// }
//
// // import 'package:sender_app/colors.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';
// //
// // class TextInputField extends StatelessWidget {
// //   final TextInputAction? textInputAction;
// //   final String? placeHolderText;
// //   final bool obscureText;
// //   final Widget? prefix;
// //   final Widget? suffix;
// //   final TextEditingController? controller;
// //   final int? maxLength;
// //   final List<TextInputFormatter>? inputFormatters;
// //   final Function? onTapShow;
// //   final String? Function(String?)? validator;
// //   final String? errorText;
// //   final Function(String?)? onChanged;
// //   final TextInputType? keyboardType;
// //   final FocusNode? focusNode;
// //   final bool isPasswordField;
// //   final bool isUnderLineStyle;
// //   final Function? onToggleObscurity;
// //   final String? title;
// //
// //   const TextInputField({
// //     Key? key,
// //     this.textInputAction,
// //     this.placeHolderText,
// //     this.obscureText = false,
// //     this.controller,
// //     this.maxLength,
// //     this.inputFormatters,
// //     this.validator,
// //     this.keyboardType,
// //     this.focusNode,
// //     this.errorText,
// //     this.isPasswordField = false,
// //     this.isUnderLineStyle = false,
// //     this.onToggleObscurity,
// //     this.onChanged,
// //     this.onTapShow,
// //     this.title,
// //     this.prefix,
// //     this.suffix,
// //   }) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     // TODO: Optimize and Refactor
// //     return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
// //       if (title != null)
// //         Padding(
// //           padding: EdgeInsets.only(bottom: 12),
// //           child: Text(
// //             title!,
// //             style: TextStyle(fontSize: 14, color: AppColors.THEME),
// //           ),
// //         ),
// //       TextFormField(
// //         textInputAction: textInputAction,
// //         obscureText: obscureText,
// //         controller: controller,
// //         maxLength: maxLength,
// //         inputFormatters: inputFormatters,
// //         validator: validator,
// //         focusNode: focusNode,
// //         onChanged: onChanged,
// //         keyboardType: keyboardType,
// //         decoration: isUnderLineStyle
// //             ? InputDecoration(
// //                 hintText: placeHolderText,
// //                 hintStyle: TextStyle(color: AppColors.GREY_2),
// //                 focusedBorder: UnderlineInputBorder(
// //                   borderSide: BorderSide(color: AppColors.THEME),
// //                 ),
// //                 errorText: errorText,
// //               )
// //             : InputDecoration(
// //                 fillColor: AppColors.GREY,
// //                 filled: true,
// //                 hintText: placeHolderText,
// //                 hintStyle: TextStyle(color: AppColors.GREY_2),
// //                 contentPadding:
// //                     const EdgeInsets.symmetric(vertical: 10, horizontal: 19),
// //                 prefix: prefix,
// //                 errorText: errorText,
// //                 suffix: isPasswordField
// //                     ? GestureDetector(
// //                         onTap: () => onToggleObscurity?.call(),
// //                         child: Text(
// //                           obscureText ? "SHOW" : "HIDE",
// //                           style: TextStyle(
// //                               fontSize: 8,
// //                               color: AppColors.BLUE,
// //                               fontWeight: FontWeight.w900),
// //                         ),
// //                       )
// //                     : suffix,
// //                 border: OutlineInputBorder(
// //                   borderRadius: BorderRadius.circular(4),
// //                   borderSide: BorderSide.none,
// //                 ),
// //               ),
// //       )
// //     ]);
// //   }
// // }
