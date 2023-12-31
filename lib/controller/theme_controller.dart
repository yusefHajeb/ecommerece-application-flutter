import 'package:ecommerece/core/constant/app_constants.dart';
import 'package:ecommerece/core/services/services.dart';
import 'package:ecommerece/core/shared/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // initializing with the current theme of the device
  MyServices myServices = Get.find();
  Rx<ThemeMode> currentTheme = ThemeMode.system.obs;
  Rx<ThemeData> currentThemeData = ThemeData.light().obs;
  Rx<String> localData = "ar".obs;
  // function to switch between themes
  void switchTheme() {
    // if (currentTheme.value == "ThemeMode.light") {
    //   currentTheme.value = ThemeMode.dark;
    //   myServices.sharedPreferences!
    //       .setString(AppConstants.themeMode, "ThemeMode.dark");
    // } else {
    //   currentTheme.value = ThemeMode.light;
    //   myServices.sharedPreferences!
    //       .setString(AppConstants.themeMode, "ThemeMode.light");
    // }
    currentTheme.value = currentTheme.value == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;

    print("switch theme Mode : ${currentTheme.value} ");

    myServices.sharedPreferences!
        .setString(AppConstants.themeMode, "${currentTheme.value}");
  }

  void changeLanguage() {
    String? lang = myServices.sharedPreferences!.getString('lange');

    if (lang == "en") {
      if (currentTheme.value == "ThemeMode.dark") {
        currentThemeData.value = AppTheme2.darkArabic;
      } else {
        currentThemeData.value = AppTheme2.lightArabic;
      }

      language("ar");

      // currentThemeData.value = currentThemeData.value == AppTheme2.darkArabic
      //     ? AppTheme2.lightArabic
      //     : AppTheme2.darkArabic;
    } else {
      if (currentTheme.value == "ThemeMode.dark") {
        currentThemeData.value = AppTheme2.darkEnglish;
      } else {
        currentThemeData.value = AppTheme2.lightEnglish;
      }
      language("en");

      // currentThemeData.value = currentThemeData.value == AppTheme2.darkEnglish
      //     ? AppTheme2.lightEnglish
      //     : AppTheme2.darkEnglish;
    }
    Get.changeTheme(currentThemeData.value);
    // currentTheme.value = currentTheme.value == ThemeMode.light
    //     ? ThemeMode.dark
    //     : ThemeMode.light;
  }

  void changeThemeData() {
    String? lang = myServices.sharedPreferences!.getString('lange');
    String? themeMode =
        myServices.sharedPreferences?.getString(AppConstants.themeMode);
    print("ThemeMode Cashed");
    print(themeMode);
    if (themeMode == "ThemeMode.dark") {
      if (lang == "en") {
        // language('ar');
        currentThemeData.value = AppTheme2.darkEnglish;
      } else {
        // language("en");
        currentThemeData.value = AppTheme2.darkArabic;
      }
      myServices.sharedPreferences
          ?.setString(AppConstants.themeMode, "ThemeMode.light");

      Get.changeThemeMode(ThemeMode.light);
    } else {
      if (lang == "en") {
        currentThemeData.value = AppTheme2.lightEnglish;
      } else {
        currentThemeData.value = AppTheme2.lightArabic;
      }
      Get.changeThemeMode(ThemeMode.dark);
      myServices.sharedPreferences
          ?.setString(AppConstants.themeMode, "ThemeMode.dark");
    }
    Get.changeTheme(currentThemeData.value);

    myServices.sharedPreferences
        ?.setString(AppConstants.themeMode, "${currentTheme.value}");
    update();
    // Get.changeThemeMode(currentTheme.value);
  }

  void language(String language) {
    print("language");
    print(language);
    localData.value = language;
    myServices.sharedPreferences!.setString("lange", language);
    update();
    print("language : ");
    print(localData.value);
    Get.updateLocale(Locale(localData.value));
  }

  @override
  void onInit() {
    String? themeMode = myServices.sharedPreferences!.getString(
      AppConstants.themeMode,
    );
    String? lang = myServices.sharedPreferences!.getString('lange');

    if (lang == "ar") {
      if (themeMode == "ThemeMode.light") {
        currentTheme = ThemeMode.light.obs;
        currentThemeData = AppTheme2.lightArabic.obs;
      } else {
        currentTheme = ThemeMode.dark.obs;
        currentThemeData = AppTheme2.darkArabic.obs;
      }
    } else {
      if (themeMode == "ThemeMode.light") {
        currentTheme = ThemeMode.light.obs;
        currentThemeData = AppTheme2.lightEnglish.obs;
      } else {
        currentTheme = ThemeMode.dark.obs;
        currentThemeData = AppTheme2.darkEnglish.obs;
      }
    }

    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
