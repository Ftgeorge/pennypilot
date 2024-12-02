import 'package:flutter/material.dart';
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
              child: Text('Signup')),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            child: Text('Login here'),
          ),
          SizedBox(
            height: 2,
          ),
        ],
      ),
    );
  }
}
