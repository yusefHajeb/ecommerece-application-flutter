import 'package:ecommerece/controller/productdetailes_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/core/constant/imageassets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class SliverAppBarProduct extends GetView<ProductDetailesControllerImp> {
  const SliverAppBarProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: const CircleAvatar(
        backgroundColor: AppColor.backgroundScreen,
        maxRadius: 100,
        minRadius: 2,
        // onPressed: () {},
        child: Icon(
          Icons.arrow_back_ios_sharp,
          color: AppColor.white,
        ),
        // color: AppColor.backgroundScreen,
      ),
      leadingWidth: 40,
      automaticallyImplyLeading: false,
      actions: [
        Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            width: 50,
            height: 10,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag_outlined),
              color: AppColor.backgroundScreen,
            ))
      ],
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,

        // collapseMode: CollapseMode.parallax,
        background: Image.asset(
          ImageAssets.get_image[controller.selected],
          fit: BoxFit.cover,
        ),
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
