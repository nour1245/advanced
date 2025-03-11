import 'package:advanced/core/themeing/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static TextStyle mainText(BuildContext context) => TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color:
        Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
  );

  static TextStyle darkBlue15_400w(BuildContext context) => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color:
        Theme.of(context).brightness == Brightness.dark
            ? ColorsManager.darkMainBlue
            : ColorsManager.lightMainBlue,
  );
  static TextStyle blue14_500w(BuildContext context) => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color:
        Theme.of(context).brightness == Brightness.dark
            ? ColorsManager.lightMainBlue
            : ColorsManager.darkMainBlue,
  );
  static TextStyle seconderyBlueText() => TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: Colors.blue,
  );

  static TextStyle font24Blue700w(BuildContext context) => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.getMainBlue(context),
  );

  static TextStyle font32BlueW700(BuildContext context) => TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.getMainBlue(context),
  );

  static TextStyle font13BlueW400(BuildContext context) => TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.getMainBlue(context),
  );

  static TextStyle font13GrayW400(BuildContext context) => TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.getMainGray(context),
  );

  static TextStyle font15GrayW400(BuildContext context) => TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.getMainGray(context),
  );

  static TextStyle buttonTextStyle(BuildContext context) => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
