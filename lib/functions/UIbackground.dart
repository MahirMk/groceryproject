import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

uiBackground(context){
  return
  Opacity(
      opacity: 0.1,
      child: Image.asset('img/backgroundVeg.png',width: 180.w,color: Theme.of(context).primaryColorDark,));
}