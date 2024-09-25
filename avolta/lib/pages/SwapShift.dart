import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Swapshift extends StatefulWidget {
  const Swapshift({super.key});

  @override
  State<Swapshift> createState() => _SwapshiftState();
}

class _SwapshiftState extends State<Swapshift> {
  String? selectedValue;
  DateTime? _selectedDate;
  TextEditingController _dateController = TextEditingController();

  void _openDatePicker() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;

        // Format the selected date and set it in the TextField
        _dateController.text = DateFormat('dd MMM').format(_selectedDate!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB9A1D6).withOpacity(0.5),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Color(0xFFB9A1D6),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
            ),
            Positioned(
              top: 40,
              left: 20,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.5)),
                child: Icon(Icons.arrow_back_ios_new_outlined),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: Container(
                  height: 300,
                  width: 250,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage("images/he2.png"))),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100, left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Do you want",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "to swap the",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "shift?",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 210),
              child: Container(
                height: 440,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.6,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xFFB9A1D6),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text("Number of Shifts you have", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),),
                              )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 6.5,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xFFB9A1D6),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color(0xFFE42626)
                                )
                            ),
                            child: Center(child: Text("03", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Color(0xFFE42626)),)),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Color(0xFFB9A1D6),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text(
                                "Request Shift",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFD9D9D9),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Container(
                                            height: 5,
                                            width: 5,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.green),
                                          ),
                                        ),
                                        Text("Day Shift"),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Icon(
                                          Icons.wb_sunny,
                                          color: Color(0xFF330066),
                                          size: 35,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFD9D9D9),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 13),
                                          child: Text("Night Shift"),
                                        ),
                                        Icon(
                                          Icons.nights_stay,
                                          color: Color(0xFF330066),
                                          size: 35,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 110,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color(0xFFB9A1D6),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    "Request Date",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 100),
                                      child: Container(
                                          width: 80,
                                          child: TextField(
                                            controller: _dateController,
                                            decoration: InputDecoration(
                                                hintText: "  18 Jun"),
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 30),
                                      child: IconButton(
                                        icon: Icon(
                                            Icons.calendar_month_outlined,
                                            size: 60),
                                        onPressed: _openDatePicker,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color(0xFFB9A1D6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              isExpanded: true,
                              value:
                                  selectedValue, // Set an initial value if needed
                              hint: Text(
                                'Requester’s name  |',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              dropdownStyleData: DropdownStyleData(
                                decoration: BoxDecoration(
                                  color: Color(0xFFC1BBBB),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                elevation: 2,
                                maxHeight: 100,
                                scrollbarTheme: ScrollbarThemeData(
                                  thickness: WidgetStateProperty.all(
                                      10), // Updated here
                                  thumbVisibility: WidgetStateProperty.all(
                                      true), // Updated here
                                ),
                                openInterval: Interval(0.0, 1.0),
                              ),
                              items: [
                                DropdownMenuItem(
                                  value: 'Option 1',
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Option 1'),
                                      ClipOval(
                                        child: Image.asset(
                                          "images/user.png",
                                          fit: BoxFit.cover,
                                          height: 60,
                                          width: 60,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 'Option 2',
                                  child: Text('Option 2'),
                                ),
                                DropdownMenuItem(
                                  value: 'Option 3',
                                  child: Text('Option 3'),
                                ),
                                DropdownMenuItem(
                                  value: 'Option 4',
                                  child: Text('Option 3'),
                                ),
                                DropdownMenuItem(
                                  value: 'Option 3',
                                  child: Text('Option 3'),
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                            color: Color(0xFFB9A1D6),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Text(
                                'Requester’s EPF No  |',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 60,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'EPF No',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(top: 655, right: 20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 100,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                    onPressed: () {
                      print("object");
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Color(0xFF8F53F0)),
                      foregroundColor:
                          WidgetStateProperty.all<Color>(Colors.black),
                    ),
                    child: Text(
                      "Send",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
