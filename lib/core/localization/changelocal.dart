import 'package:ecommerece/core/constant/apptheme.dart';
import 'package:ecommerece/core/services/services.dart';
import 'package:ecommerece/core/shared/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  ThemeData appTheme = themeEnglish;
  ThemeData darkTheme = AppTheme2.darkEnglish;
  changeLang(String language) {
    Locale local = Locale(language);

    appTheme =
        language == 'ar' ? AppTheme2.lightArabic : AppTheme2.lightEnglish;
    myServices.sharedPreferences!.setString("lange", language);
    Get.changeTheme(appTheme);
    Get.updateLocale(local);
  }

  changeTheme() {
    darkTheme = darkTheme == AppTheme2.darkEnglish
        ? AppTheme2.lightEnglish
        : AppTheme2.darkEnglish;
    appTheme = appTheme == themeEnglish ? AppTheme2.darkEnglish : themeEnglish;
    Get.changeTheme(appTheme);
    myServices.sharedPreferences!
        .setString("themeMode", Get.locale!.languageCode);
  }

  @override
  void onInit() {
    String? lang = myServices.sharedPreferences!.getString('lange');
    if (lang == "ar") {
      language = const Locale("ar");
      appTheme = themeArabic;
    } else if (lang == "en") {
      language = const Locale("en");
      appTheme = AppTheme2.lightEnglish;
      darkTheme = AppTheme2.darkEnglish;
    } else {
      Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
      darkTheme = AppTheme2.darkEnglish;
    }
    super.onInit();
  }
}
