import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  primaryColor: AppColor.secandryColor,
  secondaryHeaderColor: AppColor.secandryColor,
  fontFamily: 'Lato',
  textTheme: const TextTheme(
    bodyText1: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: AppColor.white),
    headline1: TextStyle(
        height: 2,
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: AppColor.white),
    // textAlign: TextAlign.center,
    headline2: TextStyle(
        height: 2,
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: AppColor.backgroundScreen),
    headline3: TextStyle(
        fontFamily: 'Cairo',
        height: 2,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColor.white),

    headline4: TextStyle(
        height: 2,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColor.backgroundScreen),
  ),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  primaryColor: AppColor.secandryColor,
  secondaryHeaderColor: AppColor.secandryColor,
  fontFamily: 'Cairo',
  textTheme: const TextTheme(
    bodyText1: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: AppColor.white),
    headline1: TextStyle(
        height: 2,
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: AppColor.white),
    // textAlign: TextAlign.center,
    headline2: TextStyle(
        height: 2,
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: AppColor.backgroundScreen),
    headline3: TextStyle(
        height: 2,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColor.white),

    headline4: TextStyle(
        height: 2,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColor.backgroundScreen),
  ),
  primarySwatch: Colors.blue,
);
