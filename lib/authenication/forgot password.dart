import 'package:doctor_schedule/authenication/resetPassword.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
 // Import ResetPasswordPage

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController(); // Controller for email input
  final _auth = FirebaseAuth.instance; // Firebase Authentication instance

  // Dispose the controller to free up resources
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  // Function to handle password reset request
  Future<void> _resetPassword() async {
    try {
      // Send password reset email
      await _auth.sendPasswordResetEmail(email: _emailController.text.trim());

      // Show a success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Password reset email sent! Check your inbox.")),
      );

      // Navigate to the ResetPasswordPage
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ResetPasswordPage(email: _emailController.text.trim())),
      );
    } catch (e) {
      // Display error message if password reset fails
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: ${e.toString()}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Forgot Password", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _resetPassword, // Call reset function
              child: Text("Reset Password"),
            ),
          ],
        ),
      ),
    );
  }
}
