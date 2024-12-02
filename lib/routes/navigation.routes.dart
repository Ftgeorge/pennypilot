import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
            // Navigation destination for "For You" page
            NavigationDestination(
              selectedIcon: Icon(
                MdiIcons.newspaper,
                size: 32,
                color: Colors.black,
              ),
              icon: Icon(
                MdiIcons.newspaper,
                size: 32,
                color: Colors.grey,
              ),
              label: 'For you',
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
              label: 'Headlines',
            ),

            // Navigation destination for "Search" page
            NavigationDestination(
              selectedIcon: Icon(
                MdiIcons.magnify,
                size: 32,
                color: Colors.black,
              ),
              icon: Icon(
                MdiIcons.magnify,
                size: 32,
                color: Colors.grey,
              ),
              label: 'Search',
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
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: <Widget>[][currentPageIndex],
    );
  }
}
