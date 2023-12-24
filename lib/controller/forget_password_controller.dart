import 'package:ecommerece/core/constant/routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  goToverfiction();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
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
    Get.offNamed(AppRout.verifyCode);
    // Get.offNamed(AppRout.resetPassword);
  }
}
