import 'package:flutter/material.dart';

class Trackingdetails extends StatefulWidget {
  const Trackingdetails({super.key});

  @override
  State<Trackingdetails> createState() => _TrackingdetailsState();
}

class _TrackingdetailsState extends State<Trackingdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: 170,
              decoration: BoxDecoration(
                color: Color(0xFFB9A1D6),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 120),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Request Details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60, left: 14, right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    child: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    child: Icon(Icons.menu_outlined),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}