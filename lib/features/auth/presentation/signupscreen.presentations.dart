import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pennypilot/features/auth/presentation/loginscreen.presentations.dart';
import 'package:pennypilot/routes/navigation.routes.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.05,
              child: Image.asset('assets/images/logo.png'),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: screenWidth * 0.25,
              height: screenHeight * 0.125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99),
                  color: Color(0x808C9EFF)),
              child: Icon(
                FontAwesomeIcons.camera,
                size: 24,
                color: Color(0xFF4A5DCC),
              ),
            ),
            Container(
              width: screenWidth * 0.9,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Full Name',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.06,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          labelText: '',
                          hintText: 'Enter your full name',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              width: screenWidth * 0.9,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.06,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          labelText: '',
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              width: screenWidth * 0.9,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Phone Number',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.06,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          labelText: '',
                          hintText: 'phone number',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              width: screenWidth * 0.9,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.06,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          labelText: '',
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainNavigation()));
              },
              child: Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.06,
                decoration: BoxDecoration(
                    color: Color(0x808C9EFF),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFF4A5DCC), width: 1)),
                child: Center(
                  child: Text(
                    'Signup',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                        color: Color(0xFF4A5DCC)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: screenWidth * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * 0.40,
                    height: screenHeight * 0.001,
                    color: Colors.grey,
                  ),
                  Text(
                    'Or',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  Container(
                    width: screenWidth * 0.40,
                    height: screenHeight * 0.001,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainNavigation()));
              },
              child: Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.06,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.google,
                      color: Color(0xFF4A5DCC),
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Signup with google',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                          color: Color(0xFF4A5DCC)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainNavigation()));
              },
              child: Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.06,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.facebook,
                      color: Color(0xFF4A5DCC),
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Signup with facebook',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                          color: Color(0xFF4A5DCC)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Login here",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF4A5DCC)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
