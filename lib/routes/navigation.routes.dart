import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(MdiIcons.home, 0, 'Home'),
              _buildNavItem(MdiIcons.cash, 1, 'Budget'),
              _buildNavItem(MdiIcons.flag, 2, 'Goals'),
              _buildNavItem(MdiIcons.usbFlashDrive, 3, 'Settings'),
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

  Widget _buildNavItem(IconData icon, int index, String tooltip) {
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                icon,
                size: isSelected ? 28 : 28,
                color: isSelected ? Colors.blue : Colors.grey,
              ),
              SizedBox(
                width: 8,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                child: Text(
                  tooltip,
                  style: TextStyle(
                      color: Colors.blue, fontSize: isSelected ? 13 : 0),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
