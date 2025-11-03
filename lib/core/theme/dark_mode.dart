import 'package:flutter/material.dart';
import 'package:yemeni_jops/core/constants/color_constants.dart';

ThemeData darkMode = ThemeData(
  scaffoldBackgroundColor: ColorConstants.darkScaffoldBackground,
  fontFamily: 'Cairo',
  primaryColor: ColorConstants.darkPrimary,
  colorScheme: ColorScheme.dark(
    background: ColorConstants.darkBackground,
    primary: ColorConstants.darkPrimary,
    secondary: ColorConstants.darkSecondary,
    surface: ColorConstants.darkSurface,
    onSurface: ColorConstants.darkOnSurface,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: ColorConstants.darkTextPrimary, fontSize: 16),
    bodyMedium: TextStyle(
      color: ColorConstants.darkTextSecondary,
      fontSize: 14,
    ),
    bodySmall: TextStyle(color: ColorConstants.darkTextSecondary, fontSize: 12),
    headlineLarge: TextStyle(
      color: ColorConstants.darkTextPrimary,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    headlineMedium: TextStyle(
      color: ColorConstants.darkTextPrimary,
      fontWeight: FontWeight.w600,
      fontSize: 20,
    ),
    titleLarge: TextStyle(
      color: ColorConstants.darkTextPrimary,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
  ),
  primaryTextTheme: TextTheme(
    bodyLarge: TextStyle(color: ColorConstants.darkTextPrimary),
    bodyMedium: TextStyle(color: ColorConstants.darkTextSecondary),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: ColorConstants.darkPrimary,
    titleTextStyle: TextStyle(
      color: ColorConstants.darkTextPrimary,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo',
    ),
    iconTheme: IconThemeData(color: ColorConstants.darkTextPrimary),
  ),
);
