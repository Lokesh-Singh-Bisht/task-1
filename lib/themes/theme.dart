import 'package:flutter/material.dart';
import 'package:stroll_task_1/themes/colors.dart';

class AppCustomTheme {
  static ThemeData get appTheme {
    return ThemeData().copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppThemeColors.white,
      textTheme: TextTheme().apply(
        fontFamily: 'ProximaNova',
        bodyColor: AppThemeColors.black,
        displayColor: AppThemeColors.black,
      ),
    );
  }
}
