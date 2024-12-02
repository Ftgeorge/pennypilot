import 'package:flutter/material.dart';
import 'package:pennypilot/features/auth/presentation/loginscreen.presentations.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
          ElevatedButton(onPressed: () {}, child: Text('forgot')),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            child: Text('back to login'),
          ),
          SizedBox(
            height: 2,
          ),
        ],
      ),
    );
  }
}
