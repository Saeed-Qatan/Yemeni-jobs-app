import 'package:flutter/material.dart';
import 'package:yemeni_jops/core/constants/color_constants.dart';

ThemeData lightMode = ThemeData(
  scaffoldBackgroundColor: ColorConstants.lightScaffoldBackground,
  fontFamily: 'Cairo', // اختر الخط المناسب
  primaryColor: ColorConstants.lightPrimary,
  colorScheme: ColorScheme.light(
    background: ColorConstants.lightBackground,
    primary: ColorConstants.lightPrimary,
    secondary: ColorConstants.lightSecondary,
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade700,
    surface: ColorConstants.lightSurface,
    onSurface: ColorConstants.lightOnSurface,
    shadow:
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 5,
          spreadRadius: 1,
          offset: const Offset(0, 7),
        ).color,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: ColorConstants.lightTextPrimary, fontSize: 16),
    bodyMedium: TextStyle(color: ColorConstants.lightTextPrimary, fontSize: 14),
    bodySmall: TextStyle(
      color: ColorConstants.lightTextPrimary,
      fontSize: 12,
    ),
    headlineLarge: TextStyle(
      color: ColorConstants.lightTextPrimary,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    headlineMedium: TextStyle(
      color: ColorConstants.lightTextPrimary,
      fontWeight: FontWeight.w600,
      fontSize: 20,
    ),
    titleLarge: TextStyle(
      color: ColorConstants.lightTextPrimary,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
  ),
  primaryTextTheme: TextTheme(
    bodyLarge: TextStyle(color: ColorConstants.lightTextPrimary),
    bodyMedium: TextStyle(color: ColorConstants.lightTextSecondary),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: ColorConstants.lightPrimary,
    titleTextStyle: TextStyle(
      color: ColorConstants.lightSecondary,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo',
    ),
    iconTheme: IconThemeData(color: ColorConstants.lightSecondary),
  ),
);
