import 'package:ecommerece/controller/test_controller.dart';
import 'package:ecommerece/core/class/curd.dart';
import 'package:get/get.dart';

import 'controller/authinticationscreen_controller.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestController>(() => TestController(), fenix: true);
    // Get.put(Curd());
  }
}
