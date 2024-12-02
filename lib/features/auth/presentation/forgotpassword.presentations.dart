import 'package:flutter/material.dart';
import 'package:pennypilot/features/auth/presentation/loginscreen.presentations.dart';
import 'package:pennypilot/routes/navigation.routes.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.05,
            child: Image.asset('assets/images/logo.png'),
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            width: screenWidth * 0.9,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email or Phone Number',
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
                        hintText: 'Enter your email or phone number',
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
                  'Send',
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
        ],
      ),
    );
  }
}
