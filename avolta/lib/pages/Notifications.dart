import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationState();
}

class _NotificationState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB9A1D6).withOpacity(0.5),
      body: Stack(
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              color: Color(0xFFB9A1D6),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 110),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 14, right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.5)),
                  child: Icon(Icons.arrow_back_ios_new_outlined),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.5)),
                  child: Icon(size: 30, Icons.notifications),
                )
              ],
            ),
          ),
          //////////////////////////////////////////////////////////////////////////////
          Padding(
            padding: EdgeInsets.only(top: 180, left: 20, right: 20),
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 20,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black
                        ),
                        child: Center(child: Text("3", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.white),)),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      child: Text("Unread",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                    ),
                    
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
