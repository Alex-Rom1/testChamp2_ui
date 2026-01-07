import 'package:test_champ2_ui_kit2/test_champ2_ui_kit2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Texts {
  final Palette palette;

  Texts({required this.palette});

  TextStyle get title3Semibold17 => TextStyle(
    color: palette.black,
    fontWeight: FontWeight.w600,
    fontSize: 17.sp,
    height: 24 / 17,
    letterSpacing: 0,
  );

  TextStyle get textRegular15 => TextStyle(
    color: palette.black,
    fontWeight: FontWeight.w400,
    fontSize: 15.sp,
    height: 20 / 15,
    letterSpacing: 0,
  );

  TextStyle get textMedium15 => TextStyle(
    color: palette.black,
    fontWeight: FontWeight.w500,
    fontSize: 15.sp,
    height: 20 / 15,
    letterSpacing: 0,
  );

  TextStyle get title3Medium17 => TextStyle(
    color: palette.black,
    fontWeight: FontWeight.w500,
    fontSize: 17.sp,
    height: 24 / 17,
    letterSpacing: 0,
  );

  TextStyle get title1Heavy24 => TextStyle(
    color: palette.black,
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
    height: 28 / 24,
    letterSpacing: 0.33,
  );

  TextStyle get captionRegular14 => TextStyle(
    color: palette.caption,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    height: 20 / 14,
    letterSpacing: 0,
  );
}