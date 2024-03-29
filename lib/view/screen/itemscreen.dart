import 'package:ecommerece/controller/items_controller.dart';
import 'package:ecommerece/view/widget/home/custombuttonnotification.dart';
import 'package:ecommerece/view/widget/items/custom_card_items.dart';
import 'package:ecommerece/view/widget/items/listcategores_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../widget/home/custominput_search.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerItm());
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<ItemsControllerItm>(
          builder: (controller) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CustomInputSearch(title: "Find Product"),
                      const SizedBox(
                        width: 5,
                      ),
                      CustomButtonNotification(onPressedIcon: () {})
                    ],
                  ),
                ),
                const CustomCatagoryItems(),
                const SizedBox(
                  height: 20,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 18,
                      mainAxisSpacing: 10),
                  itemCount: controller.itemsIndex.length,
                  itemBuilder: (ctx, i) => AnimationConfiguration.staggeredList(
                    position: i,
                    duration: const Duration(milliseconds: 375),
                    child: SlideAnimation(
                      verticalOffset: 100.0,
                      child: FadeInAnimation(
                        curve: Curves.slowMiddle,
                        child: CustomCardItem(
                          indexx: i,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
