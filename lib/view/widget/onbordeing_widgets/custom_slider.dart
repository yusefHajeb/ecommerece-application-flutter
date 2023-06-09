import 'package:ecommerece/controller/onboarding_contrller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/data/datasorce/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomSlider extends GetView<OnBoardingControllerImp> {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onbordingList.length,
      itemBuilder: (context, i) => Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: Text(
            onbordingList[i].title!,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        const SizedBox(height: 40),
        Image.asset(
          onbordingList[i].image!,
          fit: BoxFit.fill,
          width: 200,
          height: 250,
        ),
        const SizedBox(height: 50),
        Container(
          width: double.infinity,
          alignment: Alignment.topCenter,
          child: Text(
            onbordingList[i].paragraph!,
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
        ),
      ]),
    );
  }
}
