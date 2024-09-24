import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

class Trackingdetails extends StatefulWidget {
  const Trackingdetails({super.key});

  @override
  State<Trackingdetails> createState() => _TrackingdetailsState();
}

class _TrackingdetailsState extends State<Trackingdetails> {
  @override
  Widget build(BuildContext context) {

    int activeStep = 0;
    
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
                  "Tracking Details",
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
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                  child: Icon(Icons.arrow_back_ios_new_outlined),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                  child: Icon(Icons.menu_outlined),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 200, left: 25, right: 25),
            child: Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFB9A1D6).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  EasyStepper(
                    activeStep: activeStep, 
                    direction: Axis.vertical,
                    stepShape: StepShape.circle,
                    showLoadingAnimation: false,
                    internalPadding: 30,
                    lineStyle: LineStyle(
                      lineLength: 20,
                      lineSpace: 0,
                      lineThickness: 2
                    ),
                    steps: [
                      EasyStep(
                        customStep: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                "images/user.png",
                                fit: BoxFit.cover,
                                height: 80,
                                width: 80,
                              ),
                            
                          ),
                          customTitle: Text("data")
                      ),
                      EasyStep(
                        customStep: ClipOval(
                            child: Image.asset(
                              "images/user.png",
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ),
                          ),
                      ),
                      EasyStep(
                        customStep: ClipOval(
                            child: Image.asset(
                              "images/user.png",
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ),
                          ),
                      )
                    ]
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
