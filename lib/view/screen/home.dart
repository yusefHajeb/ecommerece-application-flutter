import 'package:carousel_slider/carousel_slider.dart';
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
        // mainAxisAlignment: MainAxisAlignment.center,
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
                CustomButtonNotification(onPressedIcon: () {})
              ],
            ),
          ),
          // const CustomCurdImage(),
          //=================

          Container(
            child: CarouselSlider(
                items: imgList.map((imgUrl) {
                  return Container(
                      width: double.infinity,
                      // margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        imgUrl,
                        fit: BoxFit.fill,
                      ));
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

          // ListView.builder(
          //   itemCount: 4,
          //   shrinkWrap: true,
          //   physics: ScrollPhysics(),
          //   scrollDirection: Axis.horizontal,
          //   itemBuilder: (BuildContext context, int i) {
          //     return Container(
          //         width: Get.width / 2,
          //         height: Get.height / 5,
          //         child: CustomCardItem(indexx: i));
          //   },
          // ),

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
            itemCount: controller.itemsIndex.length,
            itemBuilder: (ctx, i) => AnimationConfiguration.staggeredList(
              position: i,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                horizontalOffset: 50.0,
                child: FadeInAnimation(
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
