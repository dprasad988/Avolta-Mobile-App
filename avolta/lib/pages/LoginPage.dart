import 'package:avolta/widgets/support_widgets.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    ),
                    gradient: LinearGradient(colors: [
                  Color.fromRGBO(60, 41, 165, 0.6),
                  Color.fromRGBO(11, 8, 34, 0.4),
                ], begin: Alignment.center, end: Alignment.bottomCenter,)),
              ),
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
              bottom: 30,
              child: Container(
                  height: MediaQuery.of(context).size.height / 1.9,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 200,
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("User Name", style: AppWidget.semiLabelStyle()),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Enter Your User Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(width: 2),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Password", style: AppWidget.semiLabelStyle()),
                      TextField(
                          obscureText: _isObscured,
                          decoration: InputDecoration(
                            hintText: "Enter Your Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(width: 2),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscured
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscured = !_isObscured;
                                });
                              },
                            ),
                          ),
                        ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text("Forgot Password ?", style: AppWidget.semiLabelStyle())
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF8F53F0),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: Text("Sign In", style: TextStyle(
                            color: Colors.white, 
                            fontWeight: FontWeight.bold),
                          )
                        )
                      ),
                      Center(
                        child: Container(
                          width: 260,
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 3,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Or Login in With"),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 35,
                                child: Image.asset(
                                  "images/googleLogin.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Dont have an account ?"),
                              Text(" Sign in" , style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
