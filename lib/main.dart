import 'package:ecommerece/binding.dart';
import 'package:ecommerece/core/localization/changelocal.dart';
import 'package:ecommerece/core/localization/translation.dart';
import 'package:ecommerece/core/services/services.dart';
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
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleContoller contoller = Get.put(LocaleContoller());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: contoller.language,
      title: 'Flutter Demo',
      theme: contoller.appTheme,
      initialBinding: MyBinding(),
      // home: Launguage(),
      getPages: routes,
      // routes: routes,
    );
  }
}
