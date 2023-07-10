import 'package:flutter/material.dart';
import 'package:middle_east/core/resources/color_manager.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: ColorManager.instance.yellowColor,
      backgroundColor: ColorManager.instance.whiteColor,
      errorColor: ColorManager.instance.redColor,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorManager.instance.blackColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ColorManager.instance.grayColor.withOpacity(.04),
        floatingLabelStyle: TextStyle(
          color: ColorManager.instance.blueColor,
          fontSize: 20,
        ),
        labelStyle: TextStyle(
          color: ColorManager.instance.grayColor.withOpacity(.7),
        ),
        helperStyle: TextStyle(
          color: ColorManager.instance.grayColor.withOpacity(1),
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
    );
  }
}
