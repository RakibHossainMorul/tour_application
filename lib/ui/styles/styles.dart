import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class appStyle {
  static TextStyle fontStyleOne =
      TextStyle(fontSize: 20.h, fontWeight: FontWeight.w600);
  static InputDecoration textFieldDecoration(String hintText) =>
      InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 15.sp,
          ));
}
