import 'package:ecommerece/core/constant/routing.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:ecommerece/view/widget/auth/custom_auth_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum AuthMode { loding, singleUp }

abstract class AuthenticationController extends GetxController {
  login();
  goToSingUp();
  goToSingIn();
  goToForgetPassword();
  goToverfiction();
  changeValueForgetButton();
  swithchAuthMode();

  //  enum  AuthMode { loding, singleUp };
}

// ignore: deprecated_member_use
class AuthenticationControllerImp extends AuthenticationController {
  late GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController passwordContoler = TextEditingController(text: '');

  late TextEditingController emailControler = TextEditingController(text: '');
  // late TextEditingController usernameControler;
  late TextEditingController phonControler = TextEditingController(text: '');
  late TextEditingController confirmControler = TextEditingController(text: '');
  late AuthMode auth;
  late TextEditingController usernameControler =
      TextEditingController(text: '');
//special animation button singe up
  // late AnimationController anmiationController;
  // late Animation<Offset> slideAnimatio;
  // late Animation<double> opacityControler;
  bool showValuePassword = true;

  late TickerProvider vsync;
  bool _isLoding = false;
  bool showButtonForgent = false;

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
    auth = AuthMode.loding;
    passwordContoler = TextEditingController()..text = '';
    emailControler = TextEditingController();
    phonControler = TextEditingController();
    usernameControler = TextEditingController();
    // passwordContoler = TextEditingController();
    confirmControler = TextEditingController();
    showButtonForgent = true;
    // vsync = this;

    // anmiationController = AnimationController(
    //   vsync: vsync,
    //   duration: Duration(microseconds: 300),
    // );
    // slideAnimatio = Tween<Offset>(begin: Offset(0, -0.15), end: Offset(0, 0))
    //     .animate(CurvedAnimation(
    //         parent: anmiationController, curve: Curves.fastOutSlowIn));
    // opacityControler = Tween<double>(begin: 0.0, end: 1.0).animate(
    //     CurvedAnimation(parent: anmiationController, curve: Curves.easeIn));
    // TODO: implement onInit
    print('-------------------------------- ');
    super.onInit();
  }

  @override
  goToSingUp() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print(' valid');
      Get.offNamed(AppRout.verfiyC0deSingeUp);
    } else {
      print('not valid');
    }
    // Get.offNamed(AppRout.verfiyC0deSingeUp);
  }

  @override
  goToSingIn() {
    var formData = formState.currentState;
    if ((emailControler.text.isEmail && passwordContoler.text.length >= 5)) {
      Get.offNamed(AppRout.verfiryCode);
      print(' valid');
    } else {
      formData!.validate();
      print('not valid');
    }
  }

  @override
  login() {
    // var formData = formState.currentState;
    // if (formData!.validate()) {
    //   print(' valid');
    //   Get.offNamed(AppRout.verfiyC0deSingeUp);
    // } else {
    //   print('not valid');
    // }
    // Get.offNamed(AppRout.verfiyC0deSingeUp);
    // controller
  }

  @override
  changeValueForgetButton() {
    showButtonForgent = true;
    // TODO: implement changeValueForgetButton
    // throw UnimplementedError();
  }

  @override
  goToForgetPassword() {
    Get.offNamed(AppRout.forgetPassword);
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
    // anmiationController.dispose();
    emailControler.dispose();
    super.dispose();
  }

  @override
  swithchAuthMode() {
    print('////////////////');
    if (auth == AuthMode.loding) {
      print('true');
      auth = AuthMode.singleUp;
      // anmiationController.forward();
    } else {
      auth = AuthMode.loding;
    }
    // anmiationController.reverse();
  }
}
