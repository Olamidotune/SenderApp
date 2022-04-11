import 'package:flutter/material.dart';
import 'package:sender_app/Screens/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sender App',
      home: Scaffold(
        body: SafeArea(
          child: WelcomePageOne(),
        ),
      ),
    );
  }
}
