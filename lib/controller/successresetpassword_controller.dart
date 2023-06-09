import 'package:ecommerece/core/constant/routing.dart';
import 'package:get/get.dart';

abstract class SuccesSResetPasswordController extends GetxController {
  goToLogin();
}

class SuccesSResetPasswordControllerImp extends SuccesSResetPasswordController {
  @override
  goToLogin() {
    Get.offAllNamed(AppRout.homeScreen);
  }
}
