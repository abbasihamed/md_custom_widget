import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  Size get mediaQuery => MediaQuery.of(this).size;
  ThemeData get theme => Theme.of(this);
}
