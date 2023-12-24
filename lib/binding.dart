import 'package:ecommerece/core/class/curd.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Curd>(() => Curd(), fenix: true);
    Get.put(Curd());
  }
}
