import 'package:ecommerece/controller/productdetailes_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../bouncingbutton.dart';

class BottomNavigationBarBroduct extends GetView<ProductDetailsControllerImp> {
  const BottomNavigationBarBroduct({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProductDetailsControllerImp);
    return GetBuilder<ProductDetailsControllerImp>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 40,
                width: Get.width / 3,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "'\$0 ",
                    textAlign: TextAlign.center,
                  ),
                )),
            Bouncing(
              onPress: () {},
              child: Container(
                width: 190,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColor.backgroundScreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      "Add To Card",
                      style: Theme.of(context).textTheme.headline3,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
