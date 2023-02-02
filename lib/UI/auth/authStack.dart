import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

authStack(context){
  return
  Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 24.3.h,
          decoration:  BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(
                  MediaQuery.of(context).size.width, 60.w,
                )
            ),
          ),
        ),
        Opacity(
          opacity: 0.1,
          child: Image.asset('img/authBackground.png',width: 180.w, fit: BoxFit.contain,
          ),
        ),
        Column(
          children: [
            SizedBox(height: 9.6.h),
            Center(
              child: Container(
                decoration:  BoxDecoration(
                    borderRadius:  BorderRadius.circular(90),
                    color:  const Color(0xFFFFF2EE),
                    boxShadow:    [
                      BoxShadow(
                        offset: const Offset(0, 3.041665),
                        color: const Color.fromRGBO(127, 58, 40, 0.05).withOpacity(.20),
                      )
                    ]
                ),
                child: CircleAvatar(
                  radius: 10.h,
                  backgroundColor: const Color(0xFFFFF2EE),
                  child: ClipRRect(
                      child: Image.asset('img/authLogo.png',width: 20.3.w,
                      )),
                ),
              ),
            ),
          ],
        ),
      ]
  );

}