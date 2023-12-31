import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class AppTextStyle extends TextStyle {
  static const displaySmall = TextStyle(
    height: 2,
    fontFamily: 'Cairo',
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static const headlineLarge = TextStyle(
    height: 2,
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );

  static const titleLarge = TextStyle(
    height: 2,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static const titleMedium = TextStyle(
    height: 2,
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );

  static const titleSmall = TextStyle(
    height: 2,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const displayMedium = TextStyle(
      height: 2,
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: AppColor.backgroundScreen);

  static const headlineMedium = TextStyle(
      height: 2,
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: AppColor.backgroundScreen);
  static const headlineSmall = TextStyle(
      height: 2,
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: AppColor.backgroundScreen);

  static const bodyLarge = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColor.white,
  );

  static const bodyMedium = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: AppColor.white,
  );

  static const bodySmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColor.white,
  );

  static const labelLarge = TextStyle(
    fontSize: 20,
  );
}
