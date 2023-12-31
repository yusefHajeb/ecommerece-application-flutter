import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerece/controller/home_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/core/constant/imageassets.dart';
import 'package:ecommerece/view/widget/home/custombuttonnotification.dart';
import 'package:ecommerece/view/widget/home/customcard_items.dart';
import 'package:ecommerece/view/widget/home/custominput_search.dart';
import 'package:ecommerece/view/widget/home/customtitlename.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../widget/home/customscrollcatagory.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());

    List imgList = [
      ImageAssets.product6,
      ImageAssets.category3,
      ImageAssets.product2,
      // 'assest/images/s2.jpg',
      // 'assest/images/s3.jpg'
    ];
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),

          Container(
            child: Row(
              children: [
                const CustomInpoutSearch(title: "Find Product"),
                const SizedBox(
                  width: 5,
                ),
                CustomButtonNotification(onPressedIcon: () {}),
                Container(
                  width: 30,
                  height: 30,
                  color: AppColor.backgroundScreen,
                )
              ],
            ),
          ),
          // const CustomCurdImage(),
          //=================

          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            // margin: EdgeInsets.symmetric(vertical: 20),
            child: CarouselSlider(
                items: imgList.map((imgUrl) {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: kElevationToShadow[2],
                      borderRadius: BorderRadius.circular(20),
                      // border: Border.all(color: Colors.black38),
                    ),
                    // margin: EdgeInsets.symmetric(horizontal: 10),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: InteractiveViewer(
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset(
                          imgUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                    height: 185,
                    onPageChanged: (int index, _) {
                      // setState(() {
                      //   curentIndex = index;
                      // });
                    },
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    enlargeCenterPage:
                        true, //to image show is biger than behaind
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlay: true)),
          ),

          CustomTexttile(
              title: "Category", style: Theme.of(context).textTheme.headline2!),
          // ignore: prefer_const_constructors
          CustomCatagoryHeader(),
          // CustomTexttile(title: "Popular Products"),

          CustomTexttile(
              title: "Popular Products",
              style: Theme.of(context).textTheme.headline2!),

          GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(8.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7,
                mainAxisSpacing: 10),
            itemCount: controller.itemsIndex.length,
            itemBuilder: (ctx, i) => AnimationConfiguration.staggeredList(
              position: i,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                curve: Curves.easeInOut,
                horizontalOffset: 50.0,
                child: FadeInAnimation(
                  curve: Curves.easeInCirc,
                  child: CustomCardItemHome(indexx: i),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
