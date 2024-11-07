import 'package:doctor_schedule/pages/home_page.dart';
import 'package:doctor_schedule/pages/main_page.dart';
import 'package:flutter/material.dart';

import 'authenication/login.dart';
import 'authenication/welcomeScreen.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: WelcomePage(),
      ),
      routes: {
 
      },
    );
  }
}
