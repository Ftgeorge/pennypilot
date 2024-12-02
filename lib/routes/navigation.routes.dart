import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pennypilot/features/budget/budget_screen.dart';
import 'package:pennypilot/features/goals/goals_screen.dart';
import 'package:pennypilot/features/home/homescreen.dart';
import 'package:pennypilot/features/settings/settings_screen.dart';
import 'package:pennypilot/features/transaction/transaction_screen.dart';

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
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          backgroundColor: Colors.white,
          indicatorColor: Colors.white,
          selectedIndex: currentPageIndex,
          destinations: <Widget>[
            // Navigation destination for "Home" page
            NavigationDestination(
              selectedIcon: Icon(
                MdiIcons.home,
                size: 32,
                color: Colors.black,
              ),
              icon: Icon(
                MdiIcons.home,
                size: 32,
                color: Colors.grey,
              ),
              label: 'Home',
            ),

            // Navigation destination for "Headlines" page
            NavigationDestination(
              selectedIcon: Icon(
                MdiIcons.earth,
                size: 32,
                color: Colors.black,
              ),
              icon: Icon(
                MdiIcons.earth,
                size: 32,
                color: Colors.grey,
              ),
              label: 'Transactions',
            ),

            // Navigation destination for "Search" page
            NavigationDestination(
              selectedIcon: Icon(
                MdiIcons.searchWeb,
                size: 32,
                color: Colors.black,
              ),
              icon: Icon(
                MdiIcons.magnify,
                size: 32,
                color: Colors.grey,
              ),
              label: 'Budget',
            ),

            // Navigation destination for "Profile" page
            NavigationDestination(
              selectedIcon: Icon(
                Icons.person,
                size: 32,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.person_outline,
                size: 32,
                color: Colors.grey,
              ),
              label: 'Goals',
            ),

            // Navigation destination for "Profile" page
            NavigationDestination(
              selectedIcon: Icon(
                MdiIcons.prescription,
                size: 32,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.person_outline,
                size: 32,
                color: Colors.grey,
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
      body: <Widget>[
        HomeScreen(),
        TransactionScreen(),
        BudgetScreen(),
        GoalScreen(),
        SettingScreen()
      ][currentPageIndex],
    );
  }
}
