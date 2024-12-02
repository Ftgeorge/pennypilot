import 'package:flutter/material.dart';
import 'package:pennypilot/features/auth/presentation/forgotpassword.presentations.dart';
import 'package:pennypilot/features/auth/presentation/signupscreen.presentations.dart';
import 'package:pennypilot/routes/navigation.routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              "assets/images/logo.png",
              height: 80,
              fit: BoxFit.contain,
            ),
          ),
          TextField(
            decoration: InputDecoration(),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainNavigation()));
              },
              child: Text('Login')),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignupScreen(),
                ),
              );
            },
            child: Text('Signup here'),
          ),
          SizedBox(
            height: 2,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ForgotPasswordScreen(),
                ),
              );
            },
            child: Text('Forgot password'),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
