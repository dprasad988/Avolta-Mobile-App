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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                      Padding(
                        padding: EdgeInsets.only(left: 60,),
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF8A4FFF)),
                          child: Center(
                              child: Text(
                            "3",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 18),
                        child: Text("Unread",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700)),
                      ),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      //////////////////////////////////////////////////////////
                      Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, right: 10),
                                    child: Image.asset(
                                      "images/profile.png",
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                    Container(
                                      width: 200,
                                      child: Text("Jane Smith want to request you",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                      ),
                                    ),
                                  
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Text("9.56 AM", style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w300),)
                              ),
                            ],
                          ),
                        ),
                        //////////////////////////////////////////////////////////////
                      SizedBox(height: 10,),
                      Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 2, color: Color(0xFF8F53F0))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, right: 10),
                                    child: Image.asset(
                                      "images/profile.png",
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                    Container(
                                      width: 180,
                                      child: Text("Supervisor confirm your request",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                      ),
                                    ),
                                  
                                ],
                              ),
                              Text("Track", style: TextStyle(fontSize: 12, color: Color(0xFF8F53F0), fontWeight: FontWeight.w800),),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Text("9.56 AM", style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w300),)
                              ),
                            ],
                          ),
                        ),

                    ],
                  ),
                ),
                /////////////////others////////////////
                SizedBox(height: 20,),
                Padding(
                        padding: EdgeInsets.only(top: 18),
                        child: Text("Others",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700)),
                      ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      //////////////////////////////////////////////////////////
                      Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 2, color: Color(0xFFE42626))
                          ),
                              
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, right: 10),
                                    child: Image.asset(
                                      "images/profile.png",
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                    Container(
                                      width: 200,
                                      child: Text("Jane Smith want to request you",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xFFE42626),
                                              fontWeight: FontWeight.w600),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                      ),
                                    ),
                                  
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Text("9.56 AM", style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w300),)
                              ),
                            ],
                          ),
                        ),
                        //////////////////////////////////////////////////////////////
                      SizedBox(height: 10,),
                      Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 2, color: Color(0xFF8F53F0))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, right: 10),
                                    child: Image.asset(
                                      "images/profile.png",
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                    Container(
                                      width: 180,
                                      child: Text("Supervisor confirm your request",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                      ),
                                    ),
                                  
                                ],
                              ),
                              Text("Track", style: TextStyle(fontSize: 12, color: Color(0xFF8F53F0), fontWeight: FontWeight.w800),),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Text("9.56 AM", style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w300),)
                              ),
                            ],
                          ),
                        ),

                    ],
                  ),
                ),
                
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, bottom: 20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF8F53F0)),
                      child: Icon(size: 30, Icons.delete),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
