import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Forgot Password", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            TextField(decoration: InputDecoration(labelText: "Email")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              // Password reset logic
            }, child: Text("Reset Password")),
          ],
        ),
      ),
    );
  }
}
