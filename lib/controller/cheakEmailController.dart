import 'package:ecommerece/core/constant/routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheakEmailController extends GetxController {
  goToVerfiyCodeSingeUp();
}

class CheakEmailControllerImp extends CheakEmailController {
  late TextEditingController email;

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  goToVerfiyCodeSingeUp() {
    Get.offNamed(AppRout.verifyCodeSingeUp);
    // Get.offNamed(AppRout.resetPassword);
  }
}
