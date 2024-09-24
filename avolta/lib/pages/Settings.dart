import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB9A1D6).withOpacity(0.5),
      body: SingleChildScrollView(
        child: Stack(
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
                    "Settings",
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
                    child: Icon(Icons.menu_outlined),
                  )
                ],
              ),
            ),
            //////////////////////////////////////////////////////
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 180),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Image.asset(
                                "images/profile.png",
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Kasun Dilmina",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                                Container(
                                  height: 30,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFB9A1D6),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                      child: Text(
                                    "EPF225346",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800, fontSize: 12),
                                  )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Settings & Preferences",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 65,
                    decoration: BoxDecoration(
                        color: Color(0xFFB9A1D6),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Icon(
                                Icons.notifications,
                                size: 30,
                              ),
                            ),
                            Text("Notifications",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
        
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 65,
                    decoration: BoxDecoration(
                        color: Color(0xFFB9A1D6),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Icon(
                                Icons.key_outlined,
                                size: 30,
                              ),
                            ),
                            Text("Security",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Support",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 65,
                    decoration: BoxDecoration(
                        color: Color(0xFFB9A1D6),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Icon(
                                Icons.help_center,
                                size: 30,
                              ),
                            ),
                            Text("Help Center",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 65,
                    decoration: BoxDecoration(
                        color: Color(0xFFB9A1D6),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Icon(
                                Icons.report,
                                size: 30,
                              ),
                            ),
                            Text("Report a bug",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Log out",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFFBC1C1c),
                                    fontWeight: FontWeight.w600)),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.logout_outlined,
                        color: Color(0xFFBC1C1c),
                        size: 25,
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
