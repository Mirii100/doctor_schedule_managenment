import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Authentication
import '../pages/main_page.dart';
import 'forgot password.dart';
import 'signup.dart'; // Import SignupPage

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance; // Firebase Authentication instance
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // Dispose controllers to free memory
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Function to handle login
  Future<void> _login() async {
    try {
      // Sign in with email and password
      await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login successful!")),
      );

      // Navigate to the MainPage after a short delay
      Future.delayed(Duration(seconds: 1), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MainPage()),
        );
      });
    } catch (e) {
      // Display error if login fails
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login failed: ${e.toString()}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F1231), // Dark blue background
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF))), // White text
            SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email, color: Color(0xFFFFFFFF)), // White icon
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Color(0xFF4E4E6A)), // Dark purple border
                ),
                labelStyle: TextStyle(
                  color: Color(0xFFFFFFFF), // White label text
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock, color: Color(0xFFFFFFFF)), // White icon
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Color(0xFF4E4E6A)), // Dark purple border
                ),
                labelStyle: TextStyle(
                  color: Color(0xFFFFFFFF), // White label text
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4E4E6A), // Dark purple button color
              ),
              onPressed: _login, // Call login function
              child: Text("Login", style: TextStyle(
                color: Color(0xFFFFFFFF), // White text
              )),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Color(0xFF4E4E6A), // Dark purple text color
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              child: Text("Forgot Password?"),
            ),
            SizedBox(height: 10),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Color(0xFF4E4E6A), // Dark purple text color
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()), // Navigate to SignupPage
                );
              },
              child: Text("Don't have an account? Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}