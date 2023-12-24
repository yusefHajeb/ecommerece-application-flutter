import 'package:ecommerece/controller/home_controller.dart';
import 'package:ecommerece/view/widget/home/custombuttomnsvigationbaar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());

    return Scaffold(
        bottomNavigationBar: CustomButtomNavigationBar(),
        body: SingleChildScrollView(
          child: GetBuilder<HomeControllerImp>(
            builder: (controller) =>
                controller.listWidget[controller.currentIndex],
          ),
        ));
  }
}
