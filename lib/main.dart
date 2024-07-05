import 'package:flutter/material.dart';
import 'package:login_app/pages/login.dart';
import 'package:login_app/pages/otp_verify.dart';
import 'package:login_app/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Register(),
      routes: {
        'login' : (context) => Login(),
        'register': (context) => Register(),
        'otpVerify': (context) => const OtpVerify(),
       },
    );
  }
}
