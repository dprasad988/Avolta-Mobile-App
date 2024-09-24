import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';

class Trackingdetails extends StatefulWidget {
  const Trackingdetails({super.key});

  @override
  State<Trackingdetails> createState() => _TrackingdetailsState();
}

class _TrackingdetailsState extends State<Trackingdetails> {
  int activeStep = 0;
    Widget _buildIcon(int step) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: activeStep == step ? Colors.green : Colors.transparent,
          width: 5,
        ),
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Image.asset(
          "images/profile.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
   List<StepperData> _getSteps() {
    return [
      StepperData(
        iconWidget: _buildIcon(0),
        title: StepperText("Send Request"),
        subtitle: StepperText("Your request has been sent successfully."),
      ),
      StepperData(
        iconWidget: _buildIcon(1),
        title: StepperText("Request Approved"),
        subtitle: StepperText("Your request has been approved successfully."),
      ),
      StepperData(
        iconWidget: _buildIcon(2),
        title: StepperText("Supervisor Confirmed"),
        subtitle: StepperText("Supervisor confirmed your request."),
      ),
      StepperData(
        iconWidget: _buildIcon(3),
        title: StepperText("Completed"),
        subtitle: StepperText("Your request has been completed."),
      ),
    ];
  }
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
              height: 440,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFB9A1D6).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: AnotherStepper(
                      stepperList: _getSteps(),
                      stepperDirection: Axis.vertical,
                      iconHeight: 70,
                      iconWidth: 70,
                      verticalGap: 15,
                      barThickness: 7,
                      activeIndex: 1,
                      activeBarColor: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}
