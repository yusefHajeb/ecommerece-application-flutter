import 'package:ecommerece/core/constant/routing.dart';
import 'package:get/get.dart';

abstract class VerifictionSingeUpController extends GetxController {
  goToSuccessSingeUpe();
}

class VerifictionSingeUpControllerImp extends VerifictionSingeUpController {
  late String code;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  goToSuccessSingeUpe() {
    Get.offNamed(AppRout.successSingUp);
  }
}
