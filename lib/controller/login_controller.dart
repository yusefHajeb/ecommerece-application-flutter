import 'package:ecommerece/core/constant/routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSingUp();
  goToForgetPassword();
  goToverfiction();
  changeValueForgetButton();
}

class LoginControllerImp extends LoginController {
  late GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController passwordContoler;
  late TextEditingController emailControler;
  late TextEditingController usernameControler;
  late TextEditingController phonControler;
  late TextEditingController confirmControler;
  bool showButtonForgent = false;
  @override
  void onInit() {
    passwordContoler = TextEditingController();
    emailControler = TextEditingController()..text = '';
    phonControler = TextEditingController();
    usernameControler = TextEditingController();
    // passwordContoler = TextEditingController();
    confirmControler = TextEditingController();
    showButtonForgent = false;

    super.onInit();
  }

  @override
  goToSingUp() {
    // throw UnimplementedError();
  }

  @override
  login() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print(' valid');
    } else {
      print('not valid');
    }
  }

  @override
  goToSingIn() {
    showButtonForgent = false;
    throw UnimplementedError();
  }

  @override
  changeValueForgetButton() {
    showButtonForgent = true;
    // TODO: implement changeValueForgetButton
    // throw UnimplementedError();
  }

  @override
  goToForgetPassword() {
    Get.offAllNamed(AppRout.forgetPassword);
  }

  @override
  goToverfiction() {
    // TODO: implement goToverfiction
    throw UnimplementedError();
  }

  @override
  void dispose() {
    emailControler.dispose();
    passwordContoler.dispose();
    phonControler.dispose();
    usernameControler.dispose();
    confirmControler.dispose();

    super.dispose();
  }
}
