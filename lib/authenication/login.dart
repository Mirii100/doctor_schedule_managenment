import 'package:flutter/material.dart';
import '../pages/main_page.dart';
import 'forgot password.dart';

 // Import your homepage widget here

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            TextField(decoration: InputDecoration(labelText: "Email")),
            TextField(decoration: InputDecoration(labelText: "Password"), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Display login success message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Login successful!")),
                );

                // Navigate to the homepage after a short delay
                Future.delayed(Duration(seconds: 1), () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                });
              },
              child: Text("Login"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordPage()));
              },
              child: Text("Forgot Password?"),
            ),
          ],
        ),
      ),
    );
  }
}
