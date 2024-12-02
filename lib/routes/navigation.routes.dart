import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pennypilot/features/budget/budget_screen.dart';
import 'package:pennypilot/features/goals/goals_screen.dart';
import 'package:pennypilot/features/home/homescreen.dart';
import 'package:pennypilot/features/settings/settings_screen.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(FluentIcons.home_48_filled, 0, 'Home', 25),
              _buildNavItem(FontAwesomeIcons.wallet, 1, 'Budget', 20),
              _buildNavItem(FluentIcons.target_arrow_20_filled, 2, 'Goals', 25),
              _buildNavItem(FontAwesomeIcons.gear, 3, 'Settings', 20),
            ],
          ),
        ),
      ),
      body: <Widget>[
        HomeScreen(),
        BudgetScreen(),
        GoalScreen(),
        SettingScreen()
      ][currentPageIndex],
    );
  }

  Widget _buildNavItem(IconData icon, int index, String tooltip, double size) {
    final isSelected = currentPageIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          currentPageIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: size,
                color: isSelected ? Color(0xFF8C9EFF) : Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                child: Text(
                  tooltip,
                  style: TextStyle(
                      color: Color(0xFF8C9EFF),
                      fontSize: isSelected ? 14 : 0),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
