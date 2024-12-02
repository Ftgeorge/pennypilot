import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:pennypilot/features/auth/presentation/loginscreen.presentations.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Map<String, String>> slideData = [
    {
      "image": "assets/slide1.png",
      "title": "Take Charge of Your Finances",
      "description":
          "Simplify expense tracking, set smart savings goals, and gain financial clarity."
    },
    {
      "image": "assets/slide2.png",
      "title": "Track Expenses Effortlessly",
      "description":
          "Connect your bank accounts and let us categorize your spending automatically."
    },
    {
      "image": "assets/slide3.png",
      "title": "Achieve Your Goals Faster",
      "description":
          "Set personalized savings targets and watch your progress in real time."
    },
    {
      "image": "assets/slide3.png",
      "title": "Get Started",
      "description": "Sign up and start using the app right away!"
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Slide> slides = slideData.map((slide) {
      return Slide(
        widgetTitle: _buildSlideContent(
          slide["image"]!,
          slide["title"]!,
          slide["description"]!,
        ),
        backgroundColor: Colors.white,
      );
    }).toList();

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50), // Add some top padding for the logo
          Image.asset(
            "assets/images/logo.png", // Replace with your image path
            height: 80, // Adjust height for the logo
            fit: BoxFit.contain,
          ),
          SizedBox(height: 20), // Space between logo and slides
          Expanded(
            child: IntroSlider(
              slides: slides,
              onDonePress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginScreen()));
              },
              showSkipBtn: true,
              renderNextBtn: Text("Next"),
              renderSkipBtn: Text("Skip"),
              renderDoneBtn: Text("Done"),
              colorDot: Colors.grey,
              colorActiveDot: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSlideContent(
      String imagePath, String title, String description) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 200), // Slide image
          SizedBox(height: 20),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
