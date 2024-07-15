// import 'dart:async';
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_ui_task/pages/intro_page_1.dart';
import 'package:flutter_ui_task/pages/intro_page_2.dart';
import 'package:flutter_ui_task/pages/intro_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _IntroScreenState();
  }
}

class _IntroScreenState extends State<IntroScreen> {
  // to keep track of when the last page is reached
  PageController _controller = PageController();

  bool onLastPage = false;
  bool onFirstPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
                onFirstPage = (index == 0);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.9),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  onFirstPage
                      ? GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(0);
                          },
                          child: Text("",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 196, 196, 196))),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(0);
                          },
                          child: Text("Back",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 196, 196, 196))),
                        ),

                  //if onLastPage is true use first widget (Start) else use the (Next) widget
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                              duration: Duration(microseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Text("Start",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.orange)),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                              duration: Duration(microseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: Color.fromARGB(255, 119, 118, 118),
                            ),
                          ),
                        ),
                ],
              )),
          Container(
            alignment: Alignment(0, 0.6),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: SlideEffect(
                  radius: 8.0,
                  dotWidth: 8.0,
                  dotHeight: 8.0,
                  dotColor: const Color.fromARGB(255, 194, 194, 194),
                  activeDotColor: Color.fromARGB(255, 145, 146, 148)),
            ),
          ),
        ],
      ),
    );
  }
}
