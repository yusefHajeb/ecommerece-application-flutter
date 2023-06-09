import 'package:ecommerece/controller/onboarding_contrller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBording extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: AppColor.white),
        width: 200,
        height: 45,
        child: MaterialButton(
          // height: 100,
          onPressed: () {
            controller.next();
          },
          // color: Colors.white,
          child: const Text(
            'Continue',
            style: TextStyle(color: AppColor.backgroundScreen),
          ),
        ));
  }
}
