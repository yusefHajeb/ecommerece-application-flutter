import 'package:ecommerece/core/constant/routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  goToSusses();
  checkPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController rePassword;
  GlobalKey<FormState> formSate = GlobalKey<FormState>();
  @override
  void onInit() {
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

  @override
  goToSusses() {
    Get.offNamed(AppRout.successResetPassword);
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
