import 'package:ecommerece/core/constant/routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  goToSucsses();
  checkPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  @override
  late TextEditingController password;
  late TextEditingController rePassword;
  GlobalKey<FormState> formSate = GlobalKey<FormState>();
  @override
  void onInit() {
    print("---------------onInit Regester");
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }

  goToSucsses() {
    Get.offNamed(AppRout.successResetPassored);
    // Get.offNamed(AppRout.resetPassword);
  }

  @override
  checkPassword() {
    var formkey = formSate.currentState;
    if (formkey!.validate()) {
      print("valid");
    } else {
      print('Not Valid');
    }
  }
}
