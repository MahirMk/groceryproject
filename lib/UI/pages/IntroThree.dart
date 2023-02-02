import 'package:flutter/material.dart';
import 'package:groceryproject/UI/auth/LoginPage.dart';
import 'package:groceryproject/functions/intro.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'HomeScreen.dart';

class IntroThree extends StatefulWidget {
  const IntroThree({Key? key}) : super(key: key);

  @override
  State<IntroThree> createState() => _IntroThreeState();
}

class _IntroThreeState extends State<IntroThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: introPage(context: context,
          bgColor:  const Color(0xFFFBF0E8),
          introImg:  'img/introTwoImg.png',
          dot: 'img/dots3.png',
          title:  'Pick Up Delivery',
          text: 'Pick the most convenient delivery slot to have your grocery delivered. We deliver 24/7 with utmost care.',
          text1: 'Get Started',
          rectangle: 'img/bigRectangle.png',
          myWidth: 30.w,
          myFontSize: 10,
          skip: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const LoginPage()));
          },
          onClick: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const LoginPage()));
          }),
    );
  }
}
