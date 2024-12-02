import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:pennypilot/features/auth/presentation/loginscreen.presentations.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  double screenWidth = 0;
  double screenHeight = 0;

  List<Map<String, String>> slideData = [
    {
      "header": "assets/images/logo.png",
      "image": "assets/images/money.png",
      "title": "Take Charge of Your Finances",
      "description":
          "Empower yourself to manage finances by tracking expenses and setting personalized savings goals for clarity and confidence."
    },
    {
      "header": "assets/images/logo.png",
      "image": "assets/slide2.png",
      "title": "Track Expenses Effortlessly",
      "description":
          "Link your bank accounts to automatically monitor and categorize spending, gaining insights into financial habits."
    },
    {
      "header": "assets/images/logo.png",
      "image": "assets/slide3.png",
      "title": "Achieve Your Goals Faster",
      "description":
          "Set clear savings objectives and receive reminders to stay inspired and focused on financial aspirations."
    },
    {
      "header": "assets/images/logo.png",
      "image": "assets/slide4.png",
      "title": "Get Started",
      "description":
          "Join our community by signing up today and easily linking your bank account to manage your finances."
    }
  ];

  @override
  Widget build(BuildContext context) {
    // Initialize screenWidth and screenHeight here
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

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
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: screenHeight * 0.9,
            child: IntroSlider(
              slides: slides,
              onDonePress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              showSkipBtn: true,
              renderNextBtn: Text(
                "Next",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF4A5DCC)),
              ),
              renderSkipBtn: Text(
                "Skip",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 70, 70, 70),
                ),
              ),
              renderDoneBtn: Text(
                "Done",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF4A5DCC)),
              ),
              colorDot: Color(0x808C9EFF),
              colorActiveDot: Color(0xBF8C9EFF),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSlideContent(
      String imagePath, String title, String description) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: screenWidth * 0.9,
            height: screenHeight * 0.05,
            child: Image.asset('assets/images/logo.png'),
          ),
          SizedBox(height: 60),
          Container(
            child: Image.asset(
              imagePath,
              height: screenHeight * 0.3,
              width: screenWidth * 0.7,
            ),
          ),
          SizedBox(height: 60),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF4A5DCC),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
