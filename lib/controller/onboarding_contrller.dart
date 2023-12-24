import 'package:ecommerece/core/constant/app_constants.dart';
import 'package:ecommerece/core/constant/routing.dart';
import 'package:ecommerece/core/services/services.dart';
import 'package:ecommerece/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage = 0;

  late PageController pageController;
  @override
  next() {
    currentPage++;
    MyServices myServices = Get.find();
    if (currentPage > onboardingList.length - 1) {
      Get.offAllNamed(AppRout.authenticationScreen);
      myServices.sharedPreferences!.setBool(AppConstants.middleware, true);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 450), curve: Curves.easeInOut);
    }
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }
}
