import 'package:ecommerece/core/class/curd.dart';
import 'package:ecommerece/core/constant/routing.dart';
import 'package:ecommerece/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();
  // Curd curd = Get.find();
  @override
  RouteSettings? redirect(String? router) {
    if (myServices.sharedPreferences.getBool('middleware') == true) {
      return const RouteSettings(name: AppRout.authing, arguments: '');
    }
  }
}
