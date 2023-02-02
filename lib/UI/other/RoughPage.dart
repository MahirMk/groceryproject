import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:groceryproject/functions/intro.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../auth/LoginPage.dart';
import '../pages/IntroThree.dart';
import '../pages/IntroTwo.dart';

class RoughPage extends StatefulWidget {
  const RoughPage({Key? key}) : super(key: key);

  @override
  State<RoughPage> createState() => _RoughPageState();
}

class _RoughPageState extends State<RoughPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            introPage(
                context: context,
                bgColor: const Color(0xFFF2FBE8),
                dot:  'img/dots1.png',
                text:  'Online grocery shopping has never been\neasier. Need things fresh? Choose from\nour fresh grocery list now.',
                title:  'Online Grocery Store',
                introImg: 'img/introOneImg.png',
                rectangle: 'img/rectangleImage.png',
                myWidth: 10.w,
                myFontSize: 23,
                text1: '>',
                skip: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const LoginPage()));
                },
                onClick: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const IntroTwo()));
                }
            ),
            introPage(
                context:  context,
                bgColor:  const Color(0xFFE8F2FB),
                introImg:  'img/introTwoImg.png',
                dot: 'img/dots2.png',
                title:  'Choose a Grocery',
                text: 'Get fruits and vegetables or dairy and meat more online at your convenience with Hassle-free Home Delivery options.',
                text1: '>',
                rectangle: 'img/rectangleImage.png',
                myWidth: 10.w,
                myFontSize: 23,
                skip: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                onClick: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const IntroThree()));
                }),
            introPage(
                context: context,
                bgColor:  const Color(0xFFFBF0E8),
                introImg:  'img/introTwoImg.png',
                dot: 'img/dots3.png',
                title: 'Pick Up Delivery',
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
            Carousel(
              indicatorBarColor: Colors.white.withOpacity(00),
              autoScrollDuration: const Duration(seconds: 1),
              animationPageDuration: const Duration(milliseconds: 500),
              animationPageCurve: Curves.easeIn,
              activateIndicatorColor: Colors.orange,
              unActivatedIndicatorColor: Colors.grey,
              stopAtEnd: axisDirectionIsReversed(AxisDirection.left),
              autoScroll: true,
              items: [
                Image.asset('img/banner1.png',),
                Image.asset('img/banner2.png',),
                Image.asset('img/banner3.png',),
              ],
            )
          ],
        ),
      ),
    );
  }
}
