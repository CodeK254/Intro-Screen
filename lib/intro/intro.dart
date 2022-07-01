// ignore_for_file: prefer_const_constructors, unused_field, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:data_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  PageController _controller = PageController();
  bool isLastpage = false;

  @override

  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.85,
            ),
            child: Stack(
              children: [
                PageView(
                  controller: _controller,
                  onPageChanged: (index){
                    setState(() {
                      isLastpage = index == 3;
                    });
                  },
                  children: [
                    Container(
                      color: Colors.white,
                      child: ListView(
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
                          Image(
                            image: AssetImage('assets/intro4.jpg'),
                          ),
                          SizedBox(height: 40,),
                          Center(
                            child: Text(
                              'Intro',
                              style: TextStyle(
                                fontFamily: 'MeriendaOne',
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.black,
                                letterSpacing: 1.5,
                              )
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'An intro line to the data app. Designed to cater for all your data analytics studies.',
                              style: TextStyle(
                                fontFamily: 'Rancho',
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: Colors.black,
                                letterSpacing: 1.5,
                              )
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: ListView(
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
                          Image(
                            image: AssetImage('assets/intro3.jpg'),
                          ),
                          SizedBox(height: 40,),
                          Center(
                            child: Text(
                              'Business Oriented',
                              style: TextStyle(
                                fontFamily: 'MeriendaOne',
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.black,
                                letterSpacing: 1.5,
                              )
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'The app is business oriented and driven to create job opportunities for young students in Universities and Colleges. It also assists in equiping them with necessary skills to be profecient in data analytics.',
                              style: TextStyle(
                                fontFamily: 'Rancho',
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: Colors.black,
                                letterSpacing: 1.5,
                              )
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: ListView(
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
                          Image(
                            image: AssetImage('assets/intro2.jpg'),
                          ),
                          SizedBox(height: 40,),
                          Center(
                            child: Text(
                              'Education Oriented',
                              style: TextStyle(
                                fontFamily: 'MeriendaOne',
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.black,
                                letterSpacing: 1.5,
                              )
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'The app is also Education Oriented. It assists in equiping learners with necessary skills to be profecient in data analytics.',
                              style: TextStyle(
                                fontFamily: 'Rancho',
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: Colors.black,
                                letterSpacing: 1.5,
                              )
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: ListView(
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
                          Image(
                            image: AssetImage('assets/intro1.jpg'),
                          ),
                          SizedBox(height: 40,),
                          Center(
                            child: Text(
                              'Hop In',
                              style: TextStyle(
                                fontFamily: 'MeriendaOne',
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.black,
                                letterSpacing: 1.5,
                              )
                            ),
                          ),
                          SizedBox(height: 20,),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'You should dive right into it.',
                                style: TextStyle(
                                  fontFamily: 'Rancho',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                  color: Colors.black,
                                  letterSpacing: 1.5,
                                )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          !isLastpage ? Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: () => _controller.jumpToPage(3),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _controller, 
                    count: 4, 
                    effect: WormEffect(
                      activeDotColor: Colors.blue, 
                      dotHeight: 6,
                      dotWidth: 6,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () => _controller.nextPage(
                        duration: Duration(milliseconds: 500), 
                        curve: Curves.easeInOut,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          :
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen())),
            child: Container(
              color: Colors.teal,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.105,
              child: Center(
                child: Text(
                  'GET STARTED',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}