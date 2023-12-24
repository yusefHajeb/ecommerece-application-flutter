import 'package:ecommerece/controller/productdetailes_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/core/constant/imageassets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../bouncingbutton.dart';

class SliverAppBarProduct extends GetView<ProductDetailsControllerImp> {
  const SliverAppBarProduct({super.key});

  @override
  Widget build(BuildContext context) {
    // ProductDetailesControllerImp controller =
    //     Get.put(ProductDetailesControllerImp());
    return SliverAppBar(
      leading: Bouncing(
        onPress: () => Navigator.pop(context),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: AppColor.backgroundScreen,
            radius: 15,
            child: Icon(
              Icons.arrow_back_ios_sharp,
              color: AppColor.white,
              size: 19,
            ),
            // color: AppColor.backgroundScreen,
          ),
        ),
      ),
      leadingWidth: 50,
      automaticallyImplyLeading: false,
      actions: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 0,
          ),
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: AppColor.backgroundScreen,
            // maxRadius: 100,
            // minRadius: 2,
            radius: 15,
            child: const Icon(
              Icons.shopping_bag_outlined,
              color: AppColor.white,
              size: 19,
            ),
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,

        // collapseMode: CollapseMode.parallax,
        background: GetBuilder<ProductDetailsControllerImp>(builder: (context) {
          return Hero(
            tag: ImageAssets.get_image[controller.index],
            child: Image.asset(
              ImageAssets.get_image[controller.index],
              fit: BoxFit.cover,
            ),
          );
        }),
      ),
      expandedHeight: 400,
      backgroundColor: Colors.grey[200],
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Container(
          height: 20,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70),
            ),
          ),
        ),
      ),
    );
  }
}
