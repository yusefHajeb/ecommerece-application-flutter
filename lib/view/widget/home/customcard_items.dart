import 'package:ecommerece/controller/home_controller.dart';
// import 'package:ecommerece/core/class/curd.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/view/widget/bouncingbutton.dart';
// import 'package:ecommerece/view/widget/home/custombuttonlike.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCardItem extends StatelessWidget {
  final int indexx;

  const CustomCardItem({super.key, required this.indexx});

  @override
  Widget build(BuildContext context) {
    String cutDescription(String desc) {
      return desc.length > 20
          ? desc.replaceRange(70, desc.length, '...')
          : desc;
    }

    var size = MediaQuery.of(context).size;
    Get.put(HomeContollerImp());
    return GetBuilder<HomeContollerImp>(
      builder: (controller) => InkWell(
        onTap: () {
          controller.goToProduct(controller.dataItems, indexx);
        },
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  controller.dataItems[indexx].itemsImage!,
                  // imageitem,
                  fit: BoxFit.cover,
                  // width: size.width * 0.3,
                  // height: size.height * 0.2,
                ),

                Text(
                  controller.dataItems[indexx].itemsName!,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontSize: 10,
                      ),
                ),
                // Text(
                //   cutDescription(
                //     controller.dataItems[indexx].itemsDec!,
                //   ),
                //   style: Theme.of(context).textTheme.headline4,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.3,
                      height: 3,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return const Icon(
                            Icons.star,
                            color: AppColor.backgroundScreen,
                            size: 14,
                          );
                        },
                      ),
                    ),
                    // Container(
                    //   margin: EdgeInsets.only(left: 10),
                    //   child: Text(
                    //     controller.dataItems[indexx].itemPrice!,
                    //     style: Theme.of,
                    //     textAlign: TextAlign.start,
                    //   ),
                    // ),
                  ],
                ),

                // SizedBox(
                //   height: 10,
                // ),

                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 10),
                        child: Text(
                          controller.dataItems[indexx].itemPrice!,
                          style: const TextStyle(
                              color: AppColor.backgroundScreen, fontSize: 12),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 10),
                        child: Bouncing(
                          onPress: () {},
                          child: InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.shopping_bag_outlined,
                              color: AppColor.backgroundScreen,
                            ),
                            // color: AppColor.backgroundScreen,
                          ),
                        ),
                      ),
                    ],
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
