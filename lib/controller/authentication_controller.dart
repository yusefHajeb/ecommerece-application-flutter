import 'package:ecommerece/core/constant/routing.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum AuthMode { loading, singleUp }

abstract class AuthenticationController extends GetxController {
  login();
  goToSingUp();
  goToSingIn();
  goToForgetPassword();
  goToVerification();
  changeValueForgetButton();
  switchAuthMode();

  //  enum  AuthMode { loding, singleUp };
}

// ignore: deprecated_member_use
class AuthenticationControllerImp extends AuthenticationController {
  late GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController passwordController =
      TextEditingController(text: '');

  late TextEditingController emailController = TextEditingController(text: '');
  // late TextEditingController usernameControler;
  late TextEditingController phonController = TextEditingController(text: '');
  late TextEditingController confirmController =
      TextEditingController(text: '');
  late AuthMode auth;
  late TextEditingController usernameController =
      TextEditingController(text: '');
//special animation button singe up
  // late AnimationController anmiationController;
  // late Animation<Offset> slideAnimatio;
  // late Animation<double> opacityControler;
  bool showValuePassword = true;

  late TickerProvider vsync;
  // final bool _isLoding = false;
  bool showButtonForget = false;

  showPassword() {
    showValuePassword = showValuePassword == true ? false : true;
    update();
  }

  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   String? token = value;
    //   print(token!);
    // });
    print('-------------------------------- You in OnInit');
    auth = AuthMode.loading;
    passwordController = TextEditingController()..text = '';
    emailController = TextEditingController();
    phonController = TextEditingController();
    usernameController = TextEditingController();
    // passwordContoler = TextEditingController();
    confirmController = TextEditingController();
    showButtonForget = true;

    super.onInit();
  }

  @override
  goToSingUp() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      Get.offNamed(AppRout.verifyCodeSingeUp);
    } else {}
    // Get.offNamed(AppRout.verfiyC0deSingeUp);
  }

  @override
  goToSingIn() {
    var formData = formState.currentState;
    if ((emailController.text.isEmail && passwordController.text.length >= 5)) {
      Get.offNamed(AppRout.verifyCode);
      print(' valid');
    } else {
      formData!.validate();
      print('not valid');
    }
  }

  @override
  login() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print(' valid');
      Get.offNamed(AppRout.verifyCodeSingeUp);
    } else {
      print('not valid');
    }
    // Get.offNamed(AppRout.verfiyC0deSingeUp);
    // controller
  }

  @override
  changeValueForgetButton() {
    showButtonForget = true;
  }

  @override
  goToForgetPassword() {
    Get.offNamed(AppRout.forgetPassword);
  }

  @override
  goToVerification() {
    throw UnimplementedError();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    phonController.dispose();
    usernameController.dispose();
    confirmController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  switchAuthMode() {
    if (auth == AuthMode.loading) {
      print('true');
      auth = AuthMode.singleUp;
    } else {
      auth = AuthMode.loading;
    }
  }
}
