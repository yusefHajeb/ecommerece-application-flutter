import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/core/shared/app_color_extention.dart';
import 'package:ecommerece/core/shared/app_theme_text_extention.dart';
import 'package:ecommerece/core/shared/text_style.dart';
import 'package:flutter/material.dart';

class AppTheme2 {
  static final _lightTextTheme = AppTextThemeExtension(
    bodyMedium:
        AppTextStyle.bodyMedium.copyWith(color: _lightAppColors.onBackground),
    displayMedium: AppTextStyle.displayMedium.copyWith(color: Colors.black),
    displayLarge: AppTextStyle.displayMedium.copyWith(color: Colors.black),
    displaySmall: AppTextStyle.displaySmall.copyWith(color: Colors.black),
    headlineMedium: AppTextStyle.headlineMedium,
    headlineLarge: AppTextStyle.headlineLarge.copyWith(color: Colors.black),
    headlineSmall: AppTextStyle.headlineSmall.copyWith(color: Colors.black),
    titleLarge: AppTextStyle.titleLarge.copyWith(color: Colors.black),
    titleMedium: AppTextStyle.titleMedium.copyWith(color: Colors.black),
    titleSmall: AppTextStyle.titleSmall.copyWith(color: Colors.black),
    bodyLarge: AppTextStyle.bodyLarge.copyWith(color: Colors.black),
    bodySmall: AppTextStyle.bodySmall.copyWith(color: Colors.black),
    labelLarge: AppTextStyle.labelLarge.copyWith(color: Colors.black),
  );

  static ThemeData lightEnglish = () {
    ThemeData themeEnglish = ThemeData(
      fontFamily: 'Lato',
    );
    return themeEnglish.copyWith(
      primaryColor: AppColor.secandryColor,
      secondaryHeaderColor: AppColor.secandryColor,
      textTheme: TextTheme(
        bodyLarge: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColor.white,
          fontFamily: 'Lato',
        ),
        displayLarge: AppTextStyle.bodyLarge,
        // textAlign: TextAlign.center,
        displayMedium: AppTextStyle.displayMedium.copyWith(
          fontFamily: 'Lato',
        ),
        displaySmall: AppTextStyle.displaySmall.copyWith(fontFamily: "Lato"),
        headlineMedium: AppTextStyle.headlineMedium,

        bodyMedium: AppTextStyle.bodyMedium.copyWith(color: Colors.black),
      ),

      //   // Note: Default text style for Text widget.
      extensions: [
        _lightAppColors,
        _lightTextTheme,
      ],
    );
  }();

  static ThemeData lightArabic = () {
    ThemeData themeEnglish = ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black38,
      useMaterial3: true,
      fontFamily: 'Cairo',
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      ),
      switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(Colors.white),
      ),
      iconTheme: const IconThemeData(color: Colors.black12),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColor.black,
          fontFamily: 'Cairo',
        ),
        displayLarge: AppTextStyle.bodyLarge,
        // textAlign: TextAlign.center,
      ),
      listTileTheme: ListTileThemeData(
        iconColor: AppColor.backgroundScreen,
      ),
    );

    return themeEnglish.copyWith(
      iconTheme: IconThemeData(color: Colors.red),
      primaryColor: AppColor.secandryColor,
      secondaryHeaderColor: AppColor.secandryColor,
      textTheme: TextTheme(
        bodyLarge: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColor.white,
          fontFamily: 'Lato',
        ),
        displayLarge: AppTextStyle.bodyLarge,
        // textAlign: TextAlign.center,
        displayMedium: AppTextStyle.displayMedium.copyWith(
          color: AppColor.backgroundScreen,
        ),
        displaySmall: AppTextStyle.displaySmall.copyWith(color: AppColor.white),
        headlineMedium: AppTextStyle.headlineMedium
            .copyWith(color: AppColor.backgroundScreen),

        bodyMedium: AppTextStyle.bodyMedium.copyWith(color: Colors.black),
      ),

      //   // Note: Default text style for Text widget.
      extensions: [
        _lightAppColors,
        _lightTextTheme,
      ],
    );
  }();

  static ThemeData darkArabic = () {
    print("dark arabic  chose =======================");
    ThemeData themeEnglish = ThemeData(
      primaryColor: AppColor.backgroundScreen,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black38,
      useMaterial3: true,
      fontFamily: 'Cairo',
      switchTheme: SwitchThemeData(
        trackColor:
            MaterialStateProperty.resolveWith<Color>((states) => Colors.red),
      ),
    );
    return themeEnglish.copyWith(
      primaryColor: AppColor.secandryColor,
      secondaryHeaderColor: AppColor.secandryColor,
      textTheme: TextTheme(
        bodyLarge: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColor.white,
          fontFamily: 'Cairo',
        ),
        displayLarge: AppTextStyle.bodyLarge.copyWith(color: AppColor.white),
        // textAlign: TextAlign.center,
        displayMedium: AppTextStyle.displayMedium.copyWith(
          color: AppColor.white,
        ),
        displaySmall: AppTextStyle.displaySmall.copyWith(color: AppColor.white),
        headlineMedium: AppTextStyle.headlineMedium
            .copyWith(color: AppColor.backgroundScreen),

        bodyMedium: AppTextStyle.bodyMedium.copyWith(color: Colors.black),
      ),

      //   // Note: Default text style for Text widget.
      extensions: [
        _lightAppColors,
        _lightTextTheme,
      ],
    );
  }();

  static final _lightAppColors = AppColorsExtension(
    primary: const Color(0xff6200ee),
    onPrimary: Colors.white,
    secondary: const Color(0xff03dac6),
    onSecondary: Colors.black,
    error: const Color(0xffb00020),
    onError: Colors.white,
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
  );

  //
  // Dark theme
  //

  static ThemeData darkEnglish = () {
    ThemeData themeEnglish = ThemeData(
      fontFamily: 'Lato',
    );
    return themeEnglish.copyWith(
      primaryColor: AppColor.secandryColor,
      secondaryHeaderColor: AppColor.secandryColor,
      textTheme: TextTheme(
        bodyLarge: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColor.white,
          fontFamily: 'Lato',
        ),
        displayLarge: AppTextStyle.bodyLarge,
        // textAlign: TextAlign.center,
        displayMedium: AppTextStyle.displayMedium.copyWith(
          fontFamily: 'Lato',
        ),
        displaySmall: AppTextStyle.displaySmall.copyWith(fontFamily: "Lato"),
        headlineMedium: AppTextStyle.headlineMedium,

        bodyMedium: AppTextStyle.bodyMedium.copyWith(color: Colors.black),
      ),

      //   // Note: Default text style for Text widget.
      extensions: [
        _lightAppColors,
        _lightTextTheme,
      ],
    );
  }();

  static final dark = ThemeData.dark().copyWith(
    // Note: Default text style for Text widget.
    textTheme: TextTheme(),
    // Note: Default text style for Text widget.
    extensions: [
      _darkAppColors,
      _lightTextTheme,
    ],
  );

  static final _darkAppColors = AppColorsExtension(
    primary: const Color(0xffbb86fc),
    onPrimary: Colors.black,
    secondary: const Color(0xff03dac6),
    onSecondary: Colors.black,
    error: const Color(0xffcf6679),
    onError: Colors.black,
    background: const Color(0xff121212),
    onBackground: Colors.white,
    surface: const Color(0xff121212),
    onSurface: Colors.white,
  );
}

extension AppThemeExtension on ThemeData {
  AppColorsExtension get appColors =>
      extension<AppColorsExtension>() ?? AppTheme2._lightAppColors;

  // 3. And here
  AppTextThemeExtension get appTextTheme =>
      extension<AppTextThemeExtension>() ?? AppTheme2._lightTextTheme;
}

extension ThemeGetter on BuildContext {
  // Usage example: `context.theme`
  ThemeData get theme => Theme.of(this);
}
