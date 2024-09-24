import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class Userhomepage extends StatefulWidget {
  const Userhomepage({super.key});

  @override
  State<Userhomepage> createState() => _UserhomepageState();
}

class _UserhomepageState extends State<Userhomepage> {
  DateTime _currentDate = DateTime.now();
  DateTime _targetDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "images/reqtangle.png",
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 1, top: 25),
                    child: Container(
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/he.png"))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 10),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "images/user.png",
                          fit: BoxFit.cover,
                          height: 70,
                          width: 70,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning!",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          Text("Kasun Dilmina",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140, left: 20),
                  child: Column(
                    children: [
                      Text(
                        "Your Shift",
                        style: TextStyle(
                            fontSize: 36,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Schedule",
                        style: TextStyle(
                            fontSize: 36,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 171,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEBD9F0),
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
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Current Shift",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Divider(
                                          thickness: 3,
                                        ),
                                      ),
                                      Container(
                                        height: 65,
                                        width: 75,
                                        child: Image.asset(
                                          "images/sun.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25),
                                        child: Divider(
                                          thickness: 3,
                                        ),
                                      ),
                                      Text(
                                        "Jan 15",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 171,
                                width: 130,
                                decoration: BoxDecoration(
                                    color: Color(0xFFEBD9F0),
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
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Next Shift",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Divider(
                                          thickness: 3,
                                        ),
                                      ),
                                      Container(
                                        height: 65,
                                        width: 75,
                                        child: Image.asset(
                                          "images/night.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25),
                                        child: Divider(
                                          thickness: 3,
                                        ),
                                      ),
                                      Text(
                                        "Jan 23",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0xFFBAAADF).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                        child: CalendarCarousel(
                          onDayPressed: (DateTime date, List events) {
                            setState(() {
                              _currentDate = date;
                            });
                          },
                          selectedDateTime: _currentDate,
                          daysHaveCircularBorder: false,
                          customDayBuilder: (
                            bool isSelectable,
                            int index,
                            bool isSelectedDay,
                            bool isToday,
                            bool isPrevMonthDay,
                            TextStyle textStyle,
                            bool isNextMonthDay,
                            bool isThisMonthDay,
                            DateTime day,
                          ) {
                            // Define custom borders for specific dates
                            BoxDecoration customDecoration;

                            // Add borders for specific days in the current month
                            if (day.day == 2 &&
                                day.month == _targetDateTime.month) {
                              customDecoration = BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue, width: 2),
                                shape: BoxShape.circle,
                              );
                            } else if (day.day == 8 &&
                                day.month == _targetDateTime.month) {
                              customDecoration = BoxDecoration(
                                border: Border.all(color: Colors.red, width: 2),
                                shape: BoxShape.circle,
                              );
                            } else if (day.day == 15 &&
                                day.month == _targetDateTime.month) {
                              customDecoration = BoxDecoration(
                                border:
                                    Border.all(color: Colors.yellow, width: 2),
                                shape: BoxShape.circle,
                              );
                            } else {
                              customDecoration = BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 0.5),
                              );
                            }

                            return Container(
                              decoration: customDecoration,
                              child: Center(
                                child: Text(
                                  day.day.toString(),
                                  style: TextStyle(
                                    color: isPrevMonthDay || isNextMonthDay
                                        ? Colors.grey
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF8A4FFF),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.yellow, width: 2),
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Day Shift",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.yellow,
                                )),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Night Shift",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                )),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.red, width: 2),
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Swap Shift",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
