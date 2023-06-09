import 'package:ecommerece/controller/home_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/view/widget/home/custombuttomnsvigationbaar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeContollerImp());

    return Scaffold(
        // backgroundColor: AppColor.white,
        bottomNavigationBar: CustomButtomNavigationBar(),
        // controller:
        body: SingleChildScrollView(
          child: GetBuilder<HomeContollerImp>(
            builder: (controller) =>
                controller.listWidget[controller.currentIndex],
          ),
        ));
  }
}
