import 'package:ecommerece/controller/items_controller.dart';
import 'package:ecommerece/view/widget/home/custombuttonnotification.dart';
import 'package:ecommerece/view/widget/home/customcard_items.dart';
import 'package:ecommerece/view/widget/home/customscrollcatagory.dart';
import 'package:ecommerece/view/widget/items/listcategores_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../widget/home/custominput_search.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerItm());
    return Scaffold(
      body: GetBuilder<ItemsControllerItm>(
        builder: (controller) => Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: ListView(
              // shrinkWrap: true,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      const CustomInpoutSearch(title: "Find Product"),
                      CustomButtonNotification(onPressedIcon: () {})
                    ],
                  ),
                ),
                CustomCatagoryItems(),
                SizedBox(
                  height: 20,
                ),
                AnimationLimiter(
                  child: GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8.0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            // mainAxisExtent: 100,
                            childAspectRatio: 0.7,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 10),
                    itemCount: controller.dataItems.length,
                    itemBuilder: (ctx, i) =>
                        AnimationConfiguration.staggeredList(
                      position: i,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 100.0,
                        child: FadeInAnimation(
                          child: CustomCardItem(
                            indexx: i,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
