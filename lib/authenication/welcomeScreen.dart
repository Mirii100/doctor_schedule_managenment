import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'login.dart';
import 'signup.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    // Animation controller for sliding the logo
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    // Slide the logo from the left to the center
    _slideAnimation = Tween<Offset>(
      begin: Offset(-1.0, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // Start the animation when the page is loaded
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Function to navigate to login or signup
  void _navigateToLoginSignup(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(  // Center the entire body
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
            children: [
              // Animated sliding logo
              SlideTransition(
                position: _slideAnimation,
                child: Image.asset(
                  'images/image1.jpg', // Add your logo image in the assets folder
                  width: 100,
                  height: 100,
                ),
              ),
              SizedBox(height: 30),

              // Horizontal Image Scroll with description
              Container(
                height: 200,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildImageWithDescription('images/image1.jpg', 'Company Vision'),
                      _buildImageWithDescription('images/image2.jpg', 'Our Services'),
                      _buildImageWithDescription('images/image3.jpg', 'Join Us Now'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Welcome text
              Text(
                "Welcome again!",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),

              // Get Started Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to login or signup based on user preference
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Get Started"),
                      content: Text("Do you want to Login or Sign Up?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()),
                            );
                          },
                          child: Text("Login"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignupPage()),
                            );
                          },
                          child: Text("Sign Up"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text("Get Started"),
              ),
              SizedBox(height: 10),

              // Skip Button
              TextButton(
                onPressed: () {
                  // Direct to Get Started without delay
                  _navigateToLoginSignup(context);
                },
                child: Text("Skip", style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to create an image with description
  Widget _buildImageWithDescription(String imagePath, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 150,
            height: 150,
          ),
          SizedBox(height: 8),
          Text(description, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
