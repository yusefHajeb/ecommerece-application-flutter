import 'package:ecommerece/controller/home_controller.dart';
import 'package:ecommerece/core/constant/data_cash.dart';
import 'package:ecommerece/view/widget/home/cardimaeg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class CustomCurdImage extends StatelessWidget {
  const CustomCurdImage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Get.put(HomeContollerImp);
    return GetBuilder<HomeContollerImp>(
      builder: (controller) => Container(
        padding: const EdgeInsets.only(top: 0, bottom: 0),
        width: double.infinity,
        height: 190,
        child: AspectRatio(
          aspectRatio: 10,
          child: Container(
            child: PageView.builder(
                itemCount: 2,
                controller: controller.pageController,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: CustomCardView(index, size));
                }),
          ),
        ),
      ),
    );
  }
}

class CustomCardView extends StatelessWidget {
  final int index;
  final Size s;
  const CustomCardView(this.index, this.s);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeContollerImp());
    return GetBuilder<HomeContollerImp>(
      builder: (controller) => AnimatedBuilder(
        animation: controller.pageController,
        builder: (context, child) {
          double value = 0.0;
          if (controller.pageController.position.haveDimensions) {
            value = index.toDouble() - (controller.pageController.page ?? 0);
            value = (value * 0.038).clamp(-1, 1);
            print("value $value indexss $index");
          }
          return Transform.rotate(
            angle: -3.14 * value,
            child: CustomCardImage(data[index].imgUrl, s),
          );
        },
      ),
    );
  }
}
