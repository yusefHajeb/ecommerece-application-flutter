import 'package:get/get.dart';

import 'controller/authinticationscreen_controller.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthenticationControllerImp(), fenix: true);
  }
}
