import 'package:ecommerece/core/constant/routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifictionController extends GetxController {
  goToResetPassword();
}

class VerifictionControllerImp extends VerifictionController {
  @override
  late String code;
  // late TextEditingController emailControler;
  @override
  void onInit() {
    // code = TextEditingController();
    super.onInit();
  }

  @override
  goToResetPassword() {
    Get.offNamed(AppRout.resetPassword);
    // Get.offNamed(AppRout.resetPassword);
  }
}
