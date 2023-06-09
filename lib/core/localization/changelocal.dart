import 'package:ecommerece/core/constant/apptheme.dart';
import 'package:ecommerece/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleContoller extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  ThemeData appTheme = themeEnglish;
  changeLang(String language) {
    Locale local = Locale(language);

    appTheme = language == 'ar' ? themeArabic : themeEnglish;
    myServices.sharedPreferences.setString("lange", language);
    Get.changeTheme(appTheme);
    Get.updateLocale(local);
  }

  @override
  void onInit() {
    String? lang = myServices.sharedPreferences.getString('lange');
    if (lang == "ar") {
      language = const Locale("ar");
      appTheme = themeArabic;
    } else if (lang == "en") {
      language = const Locale("en");
      appTheme = themeEnglish;
    } else {
      Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
    super.onInit();
  }
}
