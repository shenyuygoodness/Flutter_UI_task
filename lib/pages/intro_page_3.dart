import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.90,
      height: MediaQuery.sizeOf(context).height * 0.30,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/pic3.png'),
            height: 235,
            width: 180,
            fit: BoxFit.cover,
          ),
          Container(
            width: 200,
            height: 70,
            child: Center(
              child: Text(
                "Set custom reminders to keep on track with your goals",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 96, 95, 95),
                ),
              ),
            ),
          ),
          Container(
            width: 250,
            height: 60,
            child: Text(
              "How do i know it works, you have to run the code to a thing out more about what the app works and more",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
    // return Container(
    //   color: Color.fromARGB(255, 187, 203, 232),
    //   child: Center(
    //       child: Text(
    //     "Set custom reminders to keep on track with your goals",
    //     style: TextStyle(fontWeight: FontWeight.w500),
    //   )),
    // );
  }
}
