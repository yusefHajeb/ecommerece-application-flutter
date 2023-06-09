import 'package:ecommerece/core/constant/routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  goToverfiction();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  @override
  late TextEditingController email;
  // late TextEditingController emailControler;
  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();
    super.dispose();
  }

  @override
  goToverfiction() {
    Get.offNamed(AppRout.verfiryCode);
    // Get.offNamed(AppRout.resetPassword);
  }
}
