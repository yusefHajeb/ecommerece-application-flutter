import 'package:ecommerece/core/constant/routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifictionSingeUpController extends GetxController {
  goToSuccessSingeUpe();
}

class VerifictionSingeUpControllerImp extends VerifictionSingeUpController {
  @override
  late String code;
  // late TextEditingController emailControler;
  @override
  void onInit() {
    // code = TextEditingController();
    super.onInit();
  }

  @override
  goToSuccessSingeUpe() {
    Get.offNamed(AppRout.successSingUp);
    // Get.offNamed(AppRout.resetPassword);
  }
}
