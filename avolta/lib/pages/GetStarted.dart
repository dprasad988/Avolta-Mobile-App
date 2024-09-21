import 'package:flutter/material.dart';

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "images/image3.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "images/image4.png",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.3,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromRGBO(24, 17, 63, 0.800),
                  Color.fromRGBO(11, 8, 34, 0.1),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              ),
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
              Positioned(
                bottom: 50,
                child: Container(
                    height: 160,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color(0xB205122F),
                        borderRadius: BorderRadius.circular(25)),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    child: Column(
                      children: [
                        Text(
                          "Get Started",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFFFFFFFF)),
                        ),
                        Container(
                          width: 200,
                          child: Divider(
                            thickness: 0.5,
                          ),
                        ),
                        Text(
                          "Manage your shifts effortlessly—swap day and night shifts, track your schedule, and stay in sync with your team.",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF)),
                        ),
                      ],
                    )),
              ),
              Positioned(
                bottom: 10,
                child: Image.asset(
                  "images/image.png",
                  width: 85,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
