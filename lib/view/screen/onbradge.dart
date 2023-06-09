import 'package:ecommerece/controller/onboarding_contrller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/view/widget/onbordeing_widgets/bottombutton.dart';
import 'package:ecommerece/view/widget/onbordeing_widgets/custom_slider.dart';
import 'package:ecommerece/view/widget/onbordeing_widgets/dotcontroler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBordage extends StatelessWidget {
  const OnBordage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        backgroundColor: AppColor.backgroundScreen,
        body: SafeArea(
            child: Column(
          children: [
            const Expanded(flex: 3, child: CustomSlider()),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotConterllerOnBordeing(),
                    Spacer(flex: 2),
                    CustomButtonOnBording(),
                  ],
                ))
          ],
        )));
  }
}
