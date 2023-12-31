import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/core/constant/routing.dart';
import 'package:ecommerece/core/functions/alertexitapp.dart';
import 'package:ecommerece/core/localization/changelocal.dart';
// import 'package:ecommerece/routes.dart';
import 'package:ecommerece/view/widget/launguageidget/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Launguage extends GetView<LocaleController> {
  const Launguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () {
          return alertExitApp();
        },
        child: SingleChildScrollView(
          child: Container(
            color: AppColor.white,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "1".tr,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomButtonLaung(
                    textButton: "AR",
                    onPraseButton: () {
                      controller.changeLang("ar");
                      Get.toNamed(AppRout.onBoarding);
                    }),
                CustomButtonLaung(
                    textButton: "EN",
                    onPraseButton: () {
                      controller.changeLang("en");
                      Get.toNamed(AppRout.onBoarding);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
