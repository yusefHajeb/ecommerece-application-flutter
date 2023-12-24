import 'package:ecommerece/core/constant/routing.dart';
import 'package:get/get.dart';

abstract class SuccesSingeUpController extends GetxController {
  goToLogin();
}

class SuccessSingeUpControllerImp extends SuccesSingeUpController {
  @override
  goToLogin() {
    Get.offNamed(AppRout.homeScreen);
    // Get.delegate();
  }
}
