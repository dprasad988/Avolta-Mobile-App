import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
             Positioned(
                top: 108,
                right: 50,
                left: 50,
                child: Image.asset(
                  "images/logo.png",
                  width: 273.0,
                  height: 46.0,
                  fit: BoxFit.cover,
                ),
              ),
          ],
        ),
      ),
    );
  }
}