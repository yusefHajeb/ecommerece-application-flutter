import 'package:ecommerece/controller/onboarding_contrller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/data/datasorce/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotConterllerOnBordeing extends StatelessWidget {
  const CustomDotConterllerOnBordeing({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onbordingList.length,
                    (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 900),
                          margin: const EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                              color: AppColor.secandryColor,
                              borderRadius: BorderRadius.circular(50)),
                          height: 8,
                          width: controller.currentPage == index ? 20 : 7,
                          alignment: Alignment.center,
                        ))
              ],
            ));
  }
}
