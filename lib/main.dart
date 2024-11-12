import 'package:doctor_schedule/pages/home_page.dart';
import 'package:doctor_schedule/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase Core
import 'package:flutter/foundation.dart'; // Import to use kIsWeb
import 'authenication/login.dart';
import 'authenication/welcomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    // Initialize Firebase with web-specific options
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDGTydJzObt_E8_LXo20qZth1_KZNroI_I",
        authDomain: "doctorschedule-47354.firebaseapp.com",
        projectId: "doctorschedule-47354",
        storageBucket: "doctorschedule-47354.firebasestorage.app",
        messagingSenderId: "189274738420",
        appId: "1:189274738420:web:86d47b22317aab34f9d8a1",
      ),
    );
  } else {
    // Initialize Firebase for Android and iOS without options
    await Firebase.initializeApp();
  }

  runApp(MyApp());
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
        // Define your routes here if any
      },
    );
  }
}
