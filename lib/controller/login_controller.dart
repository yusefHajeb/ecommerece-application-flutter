import 'package:ecommerece/core/constant/routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSingUp();
  goToForgetPassword();
  goToVerification();
  changeValueForgetButton();
}

class LoginControllerImp extends LoginController {
  late GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController passwordController;
  late TextEditingController emailController;
  late TextEditingController usernameController;
  late TextEditingController phonController;
  late TextEditingController confirmController;
  bool showButtonForget = false;
  @override
  void onInit() {
    passwordController = TextEditingController();
    emailController = TextEditingController()..text = '';
    phonController = TextEditingController();
    usernameController = TextEditingController();
    confirmController = TextEditingController();
    showButtonForget = false;

    super.onInit();
  }

  @override
  goToSingUp() {}

  @override
  login() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print(' valid');
    } else {
      print('not valid');
    }
  }

  goToSingIn() {
    showButtonForget = false;
    throw UnimplementedError();
  }

  @override
  changeValueForgetButton() {
    showButtonForget = true;
    // TODO: implement changeValueForgetButton
    // throw UnimplementedError();
  }

  @override
  goToForgetPassword() {
    Get.offAllNamed(AppRout.forgetPassword);
  }

  @override
  goToVerification() {
    // TODO: implement goToverfiction
    throw UnimplementedError();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    phonController.dispose();
    usernameController.dispose();
    confirmController.dispose();

    super.dispose();
  }
}
