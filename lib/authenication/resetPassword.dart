import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'signup.dart'; // Import your SignupPage

class ResetPasswordPage extends StatefulWidget {
  final String email;

  ResetPasswordPage({required this.email});

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _emailController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  // Dispose controllers to free memory
  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  // Function to update the password
  Future<void> _updatePassword() async {
    if (_passwordController.text.trim() == _confirmPasswordController.text.trim()) {
      try {
        User? user = FirebaseAuth.instance.currentUser;

        // If the user is logged in, update password
        if (user != null) {
          await user.updatePassword(_passwordController.text.trim());

          // Show success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Password updated successfully!")),
          );

          // Redirect to Signup Page after password update
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SignupPage()),
          );
        } else {
          // If no logged-in user, send a password reset email
          await _auth.sendPasswordResetEmail(email: widget.email);

          // Show success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Password reset email sent!")),
          );

          // Redirect to Signup Page after sending reset email
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SignupPage()),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error: ${e.toString()}")),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Passwords do not match!")),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    // Initialize the email controller with the passed email
    _emailController.text = widget.email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Email TextField, pre-filled with the email
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              readOnly: true, // Make it read-only so the user cannot change the email
            ),
            SizedBox(height: 16),
            // Password TextField
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: "New Password",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            // Confirm Password TextField
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updatePassword, // Call update password function
              child: Text("Update Password"),
            ),
          ],
        ),
      ),
    );
  }
}
