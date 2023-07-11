import 'package:flutter/material.dart';
import 'package:middle_east/core/resources/color_manager.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: ColorManager.instance.yellowColor,
      backgroundColor: ColorManager.instance.whiteColor,
      errorColor: ColorManager.instance.redColor,
      fontFamily: 'iransans-num',
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorManager.instance.blackColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: ColorManager.instance.yellowColor,
        centerTitle: true,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ColorManager.instance.grayColor.withOpacity(.04),
        floatingLabelStyle: TextStyle(
          color: ColorManager.instance.blueColor,
          fontSize: 16,
          fontStyle: FontStyle.normal,
        ),
        labelStyle: TextStyle(
          color: ColorManager.instance.grayColor.withOpacity(.7),
          fontSize: 16,
          fontStyle: FontStyle.normal,
        ),
        helperStyle: TextStyle(
          color: ColorManager.instance.grayColor.withOpacity(1),
          fontSize: 14,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
        ),
        errorStyle: TextStyle(
          color: ColorManager.instance.redColor,
          fontSize: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: ColorManager.instance.grayColor,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: ColorManager.instance.blueColor,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: ColorManager.instance.redColor,
            width: 2,
          ),
        ),
      ),
      textTheme: TextTheme(
        headline2: TextStyle(
          color: ColorManager.instance.whiteColor,
          fontSize: 23,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: const TextStyle(
          color: Color(0xFF344563),
          fontSize: 14,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
