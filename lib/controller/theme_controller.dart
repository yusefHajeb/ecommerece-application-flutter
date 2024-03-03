import 'package:ecommerece/core/constant/app_constants.dart';
import 'package:ecommerece/core/services/services.dart';
import 'package:ecommerece/core/shared/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // initializing with the current theme of the device
  MyServices myServices = Get.find();
  Locale? language;
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

  // void changeThemeData() {
  //   String? lang = myServices.sharedPreferences!.getString('lange');
  //   String? themeMode =
  //       myServices.sharedPreferences?.getString(AppConstants.themeMode);
  //   print("ThemeMode Cashed");
  //   print(themeMode);
  //   if (themeMode == "ThemeMode.dark") {
  //     if (lang == "en") {
  //       // language('ar');
  //       currentThemeData.value = AppTheme2.lightEnglish;
  //     } else {
  //       // language("en");
  //       currentThemeData.value = AppTheme2.lightArabic;
  //     }
  //     myServices.sharedPreferences
  //         ?.setString(AppConstants.themeMode, "ThemeMode.light");

  //     Get.changeThemeMode(ThemeMode.light);
  //   } else {
  //     if (lang == "en") {
  //       currentThemeData.value = AppTheme2.darkEnglish;
  //     } else {
  //       currentThemeData.value = AppTheme2.darkArabic;
  //     }
  //     Get.changeThemeMode(ThemeMode.dark);
  //     myServices.sharedPreferences
  //         ?.setString(AppConstants.themeMode, "ThemeMode.dark");
  //   }

  //   Get.changeTheme(currentThemeData.value);

  //   update();
  // }

  RxString controllerLanguage = "en".obs;

  void changeLanguage(String value) {
    String? themeMode = myServices.sharedPreferences!.getString(
      AppConstants.themeMode,
    );
    if (value == "العربية") {
      myServices.sharedPreferences!.setString('lange', "ar");
      controllerLanguage.value = "ar";
      if (themeMode == "ThemeMode.light") {
        // currentTheme.value = ThemeMode.light;
        currentThemeData.value = AppTheme2.lightArabic;
      } else if (themeMode == "ThemeMode.dark") {
        // currentTheme.value = ThemeMode.dark;
        currentThemeData.value = AppTheme2.darkArabic;
      }
    } else if (value == "English") {
      controllerLanguage.value = "en";
      myServices.sharedPreferences!.setString("lange", "en");
      if (themeMode == "ThemeMode.light") {
        currentTheme.value = ThemeMode.light;
        currentThemeData.value = AppTheme2.lightEnglish;
      } else {
        currentTheme.value = ThemeMode.dark;
        currentThemeData.value = AppTheme2.darkEnglish;
      }
    }

    localData.value = controllerLanguage.value;
    language = Locale(controllerLanguage.value);
    Get.updateLocale(language!);
    Get.changeTheme(currentThemeData.value);
    // Get.changeThemeMode(currentTheme.value);
    update();
  }

  @override
  void onInit() {
    String? themeMode = myServices.sharedPreferences!.getString(
      AppConstants.themeMode,
    );

    String? lang = myServices.sharedPreferences!.getString('lange');

    if (lang == "ar") {
      language = const Locale("ar");
      controllerLanguage.value = 'ar';
      if (themeMode == "ThemeMode.light") {
        currentTheme = ThemeMode.light.obs;
        currentThemeData = AppTheme2.lightArabic.obs;
      } else {
        currentTheme = ThemeMode.dark.obs;
        currentThemeData = AppTheme2.darkArabic.obs;
      }
    } else if (lang == 'en') {
      language = const Locale("en");
      controllerLanguage.value = 'ar';
      if (themeMode == "ThemeMode.light") {
        currentTheme = ThemeMode.light.obs;
        currentThemeData = AppTheme2.lightEnglish.obs;
      } else {
        currentTheme = ThemeMode.dark.obs;
        currentThemeData = AppTheme2.darkEnglish.obs;
      }
    }

    Get.changeTheme(currentThemeData.value);
    Get.changeThemeMode(currentTheme.value);

    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
