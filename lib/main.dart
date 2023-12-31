import 'package:ecommerece/binding.dart';
import 'package:ecommerece/controller/theme_controller.dart';
import 'package:ecommerece/core/localization/changelocal.dart';
import 'package:ecommerece/core/localization/translation.dart';
import 'package:ecommerece/core/services/services.dart';
import 'package:ecommerece/core/shared/app_theme.dart';
import 'package:ecommerece/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController contoller = Get.put(LocaleController());
    HomeController themeController = Get.put(HomeController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: Locale(themeController.localData.value),
      themeMode: themeController.currentTheme.value,
      title: 'Flutter Demo',
      theme: contoller.appTheme,
      // darkTheme: themeController.currentThemeData.value,
      darkTheme: AppTheme2.darkEnglish,
      initialBinding: MyBinding(),
      // home: Launguage(),
      getPages: routes,
      // routes: routes,
    );
  }
}
