import 'package:flutter/material.dart';

/// Extension for context
extension MediaQueryExtension on BuildContext {
  /// Returns the media query data
  Size get mediaQuery => MediaQuery.sizeOf(this);

  /// Returns the height of the device
  double get height => MediaQuery.sizeOf(this).height;

  /// Returns the width of the device
  double get width => MediaQuery.sizeOf(this).width;

  /// Returns 1% of the screen height
  double get lowValue => height * 0.01;

  /// Default value is 2% of the screen height
  double get defaultValue => height * 0.02;

  /// Returns 5% of the screen height
  double get highValue => height * 0.05;

  /// Dynamic Width
  double dynamicWidth(double val) => width * val;

  /// Dynamic Height
  double dynamicHeight(double val) => height * val;
}

/// Extension for theme
extension ThemeExtension on BuildContext {
  /// Get the theme data
  ThemeData get theme => Theme.of(this);

  /// Get the text theme
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Get the brightness
  Brightness get brightness => Theme.of(this).brightness;
}
