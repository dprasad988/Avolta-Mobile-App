import 'package:avolta/components/UserRoleProvider.dart';
import 'package:avolta/pages/Notifications.dart';
import 'package:avolta/pages/RequestDetails.dart';
import 'package:avolta/pages/SwapShift.dart';
import 'package:avolta/pages/UserProfile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:avolta/pages/UserHomePage.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final userRole = Provider.of<UserRoleProvider>(context).role;

    List<Widget> _pages = [
      Userhomepage(),
      userRole == 'supervisor' ? Requestdetails() : Swapshift(),
      Notifications(),
      Userprofile()
    ];

    List<SalomonBottomBarItem> _bottomBarItems = [
      SalomonBottomBarItem(
        icon: Icon(Icons.home),
        title: Text("Home"),
        selectedColor: Colors.white,
      ),

      SalomonBottomBarItem(
        icon: userRole == 'supervisor' ? Icon(Icons.supervisor_account) : Icon(Icons.track_changes),
        title: Text("Tracking"),
        selectedColor: Colors.white,
      ),

      SalomonBottomBarItem(
        icon: Icon(Icons.notifications),
        title: Text("Notifications"),
        selectedColor: Colors.white,
      ),

      SalomonBottomBarItem(
        icon: Icon(Icons.person),
        title: Text("Profile"),
        selectedColor: Colors.white,
      )
    ];

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
          items: _bottomBarItems,
        ),
      ),
    );
  }
}
