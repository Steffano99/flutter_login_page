import 'package:android_studio/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:android_studio/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Login Page',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Pallete.pageColor),
      home: const LoginScreen(),
    );
  }
}
