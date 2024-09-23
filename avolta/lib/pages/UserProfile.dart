import 'package:flutter/material.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFB9A1D6).withOpacity(0.5),
        body: Stack(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: Color(0xFFB9A1D6),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "My Profile",
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
            Padding(
              padding: EdgeInsets.only(top: 115),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          "images/user2.png",
                          fit: BoxFit.cover,
                          height: 120,
                          width: 120,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Kasun Dilmina",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 300),
              child: Column(
                children: [
                  _epfNo(context),
                  SizedBox(
                    height: 10,
                  ),
                  _team(context),
                  SizedBox(
                    height: 10,
                  ),
                  _floor(context),
                  SizedBox(
                    height: 10,
                  ),
                  _resignation(context),
                  SizedBox(
                    height: 10,
                  ),
                  _email(context),
                  SizedBox(
                    height: 10,
                  ),
                  _phoneNo(context),
                  SizedBox(height: 20,),
                  _editButton(context)
                ],
              ),
            )
          ],
        ));
  }

  Widget _epfNo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'EPF No              |',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Container(width: 100, child: Text("222545")),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _team(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'Team                 |',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Container(width: 100, child: Text("Team 2")),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _floor(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'Floor                  |',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Container(width: 100, child: Text("Arrival")),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _resignation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'Resignation      |',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text("2025-02-12"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _email(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'Email      |',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text("dhammika1204@gmail.com"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _phoneNo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'Phone No          |',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text("071-1007023"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _editButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(255, 147, 109, 192)),
            child: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
