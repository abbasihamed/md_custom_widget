import 'package:flutter/material.dart';

class ColorManager {
  ColorManager._();

  static final ColorManager _instance = ColorManager._();

  static ColorManager get instance => _instance;

  final Color yellowColor = const Color(0xFFFFAB00);
  final Color whiteColor = const Color(0xFFFFFFFF);
  final Color blackColor = const Color(0xFF000000);
  final Color redColor = const Color(0xFFEB5757);
  final Color blueColor = const Color(0xFF08317D);
  final Color grayColor = const Color(0xFF091E42).withOpacity(.14);
}
