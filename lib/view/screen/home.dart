import 'package:ecommerece/controller/home_controller.dart';
import 'package:ecommerece/core/constant/color.dart';

import 'package:ecommerece/core/constant/imageassets.dart';
import 'package:ecommerece/view/widget/bouncingbutton.dart';
// import 'package:velocity_x/velocity_x.dart';
import 'package:ecommerece/view/widget/home/custombuttonnotification.dart';
import 'package:ecommerece/view/widget/home/customcard_items.dart';
import 'package:ecommerece/view/widget/home/custominput_search.dart';
import 'package:ecommerece/view/widget/home/customtitlename.dart';
import 'package:ecommerece/view/widget/home/viewcardimage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../widget/home/customscrollcatagory.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeContollerImp controller = Get.put(HomeContollerImp());
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      // padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),

          Container(
            child: Row(
              children: [
                const CustomInpoutSearch(title: "Find Product"),
                CustomButtonNotification(onPressedIcon: () {})
              ],
            ),
          ),
          const CustomCurdImage(),
          //=================

          CustomTexttile(
              title: "Catogery", style: Theme.of(context).textTheme.headline2!),
          // ignore: prefer_const_constructors
          CustomCatagoryHeader(),
          // CustomTexttile(title: "Popular Products"),

          CustomTexttile(
              title: "Popular Products",
              style: Theme.of(context).textTheme.headline2!),
          GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            padding: const EdgeInsets.all(8.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7,
                mainAxisSpacing: 10),
            itemCount: controller.dataItems.length,
            itemBuilder: (ctx, i) => AnimationConfiguration.staggeredList(
              position: i,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                horizontalOffset: 50.0,
                child: FadeInAnimation(
                  child: CustomCardItem(indexx: i),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
