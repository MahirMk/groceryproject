import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryproject/UI/auth/LoginPage.dart';
import 'package:groceryproject/UI/auth/SplashScreen.dart';
import 'package:groceryproject/UI/other/RoughPage.dart';
import 'package:groceryproject/UI/pages/HomeScreen.dart';
import 'package:groceryproject/utils/BottomNavigationPage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const type = 1;
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GestureDetector(
          onTap: ()=> FocusManager.instance.primaryFocus?.unfocus(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.purple,
              primaryColor: const Color(0xFFFFFFFF),
              canvasColor: const Color(0xFFFBFAFF),
              primaryColorDark: const Color(0xFFFE7551),
              backgroundColor: const Color(0xFF111111),
              fontFamily: GoogleFonts.poppins().fontFamily,
              textTheme: const TextTheme(
                headline1: TextStyle(),
                headline2: TextStyle(),
                headline3: TextStyle(),
                headline4: TextStyle(),
                headline5: TextStyle(),
                headline6: TextStyle(),
                subtitle1: TextStyle(),
                subtitle2: TextStyle(),
                bodyText1: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                bodyText2: TextStyle(),
                button: TextStyle(color: Color(0xFFFFFFFF),fontSize: 18,fontWeight: FontWeight.bold),
                caption: TextStyle(),
                overline: TextStyle(),
              ),
            ),
            home: const LoginPage(),
            // home:   const RoughPage(),
          ),
        );
      },
      maxTabletWidth: 900, // Optional
    );
  }
}