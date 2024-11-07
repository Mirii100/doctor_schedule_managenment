import 'package:flutter/material.dart';
import 'login.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Signup", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            TextField(decoration: InputDecoration(labelText: "Name")),
            TextField(decoration: InputDecoration(labelText: "Email")),
            TextField(decoration: InputDecoration(labelText: "Password"), obscureText: true),
            TextField(decoration: InputDecoration(labelText: "Confirm Password"), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Display signup success message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Signup successful!")),
                );
              },
              child: Text("Sign Up"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text("Already have an account? Login"),
            ),
          ],
        ),
      ),
    );
  }
}
