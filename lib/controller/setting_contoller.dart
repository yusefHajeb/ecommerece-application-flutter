import 'package:ecommerece/core/constant/routing.dart';
import 'package:ecommerece/core/services/services.dart';
import 'package:get/get.dart';

abstract class SetteController extends GetxController {
  logOut();
}

class SettingControllerImp extends SetteController {
  MyServices myServices = Get.find();

  @override
  logOut() {
    myServices.sharedPreferences!.clear();
    Get.offAllNamed(AppRout.onBoarding);
    update();
  }
}
