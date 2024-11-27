import 'package:flutter/material.dart';
import 'package:workout_fitness/view/login/login_screen.dart';

void main() {
  runApp(submitscreen());
}

class submitscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: submitscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class submitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Making the screen responsive using MediaQuery
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/background.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlaying the content on top of the background
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: screenSize.width * 0.8,
                height: screenSize.height * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Fit & Fine',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Forget Password',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter New Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Conform New Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => MyLogin()),
                            (route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange, // button background color
                        onPrimary: Colors.white, // button text color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 50.0,
                        ),
                      ),
                      child: Text(
                        'Change',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Don’t Worry? We Are Here...',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
