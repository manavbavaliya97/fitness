import 'package:flutter/material.dart';
import 'package:workout_fitness/view/login/forget_screen.dart';
import 'package:workout_fitness/view/login/on_boarding_view.dart';
import 'package:workout_fitness/view/login/register_screen.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/login.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 85, top: screenHeight * 0.20),
              child: Text(
                'Welcome\nBack',
                style: TextStyle(
                    color: Colors.black, fontSize: screenWidth * 0.08),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: screenHeight * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
                      child: Column(
                        children: [
                          TextField(
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.03),
                          TextField(
                            obscureText: true,
                            style: const TextStyle(),
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.04),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sign in',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.07,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: const Color(0xff4c505b),
                                child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const OnBoardingView()),
                                        (route) => false);
                                  },
                                  icon: const Icon(Icons.arrow_forward),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.04),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MyRegister()),
                                      (route) => false);
                                },
                                style: const ButtonStyle(),
                                child: Text(
                                  'Sign Up',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff4c505b),
                                    fontSize: screenWidth * 0.05,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => forgetscreen()),
                                      (route) => false);
                                },
                                child: Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: const Color(0xff4c505b),
                                    fontSize: screenWidth * 0.05,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
