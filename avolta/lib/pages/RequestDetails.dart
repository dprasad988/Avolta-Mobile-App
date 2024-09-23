import 'package:flutter/material.dart';

class Requestdetails extends StatefulWidget {
  const Requestdetails({super.key});

  @override
  State<Requestdetails> createState() => _RequestdetailsState();
}

class _RequestdetailsState extends State<Requestdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFB9A1D6).withOpacity(0.5),
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
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 200, left: 30, right: 30),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 220,
                    left: 50,
                    right: 50,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "images/user.png",
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jane Smith",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                ),
                                Text("EPF224678",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10))
                              ],
                            ),
                          )
                        ],
                      ),
                      Divider(
                        thickness: 3,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 5),
                        child: Row(
                          children: [
                            Text("Requested Swap:",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "Jane Smith wants to swap with you for the night shift on Jan 26.",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: ElevatedButton(
                              onPressed: () {
                                print("object");
                              },
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(
                                    Color(0xFF8F53F0)),
                                foregroundColor: WidgetStateProperty.all<Color>(
                                    Colors.black),
                              ),
                              child: Text(
                                "Approve",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: ElevatedButton(
                              onPressed: () {
                                print("object");
                              },
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(
                                    Color(0xFF8F53F0)),
                                foregroundColor: WidgetStateProperty.all<Color>(
                                    Colors.black),
                              ),
                              child: Text(
                                "Reject",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 180,
                  left: 15,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF8F53F0).withOpacity(0.5)),
                    child: Icon(size: 30, Icons.notifications),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
