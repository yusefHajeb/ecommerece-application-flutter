import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomHeaderNameShop extends StatelessWidget {
  const CustomHeaderNameShop({super.key});

  // const CustomHeaderNameShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 30),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 44.0),
        // transform: Matrix4.rotationZ(-8 * pi / 180)..translate(-10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColor.white,
            boxShadow: const [
              BoxShadow(
                  blurRadius: 8,
                  offset: Offset(0, 2),
                  color: AppColor.backgroundScreen),
            ]),
        child: Text(
          "YAH Shope",
          textAlign: TextAlign.left,
          style:
              Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 40),
        ));
  }
}
