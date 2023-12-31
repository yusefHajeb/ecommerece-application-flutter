import 'package:ecommerece/controller/theme_controller.dart';
import 'package:ecommerece/core/localization/changelocal.dart';
import 'package:ecommerece/core/shared/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeTheme extends StatefulWidget {
  const HomeTheme({super.key});

  @override
  State<HomeTheme> createState() => _HomeThemeState();
}

class _HomeThemeState extends State<HomeTheme> {
  final HomeController _controller = Get.put(HomeController());
  final LocaleController _themeMode = Get.put(LocaleController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Tap on the switch to change the Theme",
            style: TextStyle(fontSize: size.height * 0.02),
          ),
          Obx(
            () => Switch(
              value: _controller.currentTheme.value == ThemeMode.dark,
              onChanged: (value) {
                _controller.switchTheme();
                _controller.changeLanguage();
              },
              activeColor: CustomTheme.white,
            ),
          ),
          Obx(() => Switch(
                value: _controller.localData.value == "ar",
                onChanged: (value) {
                  // _controller.changeTheme();
                  // _controller.changeTheme();
                  // Get.changeTheme(_controller.currentThemeData.value);

                  // _themeMode.changeLang(
                  //     _controller.localData.value == "ar" ? "en" : "ar");
                },
                activeColor: CustomTheme.white,
              )),
          Text("Current Theme: ${_controller.currentTheme.value}"),
          Text("Current Language: ${_controller.localData.value}"),
          // Obx(() => Switch(
          //       value: _controller.currentTheme.value == ThemeMode.dark,
          //     )),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
