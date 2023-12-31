import 'package:ecommerece/core/shared/app_color_extention.dart';
import 'package:ecommerece/core/shared/app_theme.dart';
import 'package:flutter/material.dart';

extension AppThemeExtension on ThemeData {
  /// Usage example: Theme.of(context).appColors;
  AppColorsExtension get appColors =>
      extension<AppColorsExtension>() ??
      AppThemeExtension(AppTheme2.lightEnglish).appColors;
}
