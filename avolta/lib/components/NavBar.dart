import 'package:avolta/pages/Settings.dart';
import 'package:avolta/pages/SwapShift.dart';
import 'package:avolta/pages/TrackingDetails.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:avolta/pages/UserHomePage.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Userhomepage(), 
    Swapshift(),
    Trackingdetails(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        color: Color(0xFF9C89B3),
        child: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.white,
            ),
        
            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.track_changes),
              title: Text("Tracking"),
              selectedColor: Colors.white,
            ),
        
            /// Notifications
            SalomonBottomBarItem(
              icon: Icon(Icons.notifications),
              title: Text("Notifications"),
              selectedColor: Colors.white,
            ),
        
            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
