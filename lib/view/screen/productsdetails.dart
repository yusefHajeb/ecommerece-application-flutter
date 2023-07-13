import 'package:ecommerece/controller/productdetailes_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/core/constant/imageassets.dart';
import 'package:ecommerece/data/models/items_model.dart';
import 'package:ecommerece/view/widget/products/bottomnavigationbarproduct.dart';
// import 'package:ecommerece/view/widget/bouncingbutton.dart';
// import 'package:ecommerece/view/widget/home/customtitlename.dart';
// import 'package:ecommerece/view/widget/products/bottomnavigationbarproduct.dart';
import 'package:ecommerece/view/widget/products/sliverappbar_productdetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/products/custom_incriment_and_price.dart';
import '../widget/products/custom_size_product.dart';

class CustomProductDetalesScreen extends StatelessWidget {
  const CustomProductDetalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProductDetailesControllerImp());
    return Scaffold(
      body: GetBuilder<ProductDetailesControllerImp>(
        builder: (controller) => Container(
            child: ProductDetalesScreen(
          data: controller.dataDetales[controller.selected],
          selected: controller.selected,
        )),
      ),
    );
  }
}

class ProductDetalesScreen extends StatelessWidget {
  ItemsModel data;
  int selected;
  ProductDetalesScreen({required this.data, required this.selected, super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(ProductDetailesControllerImp());
    double heightScreen = MediaQuery.of(context).size.height;
    int indexx = 0;
    // Image x = ImageAssets.get_image[3];
    ProductDetailesControllerImp controller =
        Get.put(ProductDetailesControllerImp());
    double widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
        bottomNavigationBar: const BottomNavigationBarBroduct(),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              const SliverAppBarProduct(),
              SliverPadding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                sliver: SliverToBoxAdapter(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    // CustomTexttile(title: "Popular Products"),
                    Text(
                      data.itemsName!,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontSize: 24),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          '4.3',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: widthScreen * 0.4,
                        ),
                      ],
                    ),
                    Container(
                      width: 400,
                      height: 1,
                      decoration: BoxDecoration(color: Colors.grey[200]),
                    ),

                    CustomIncrimentAndPrice(data: data, controller: controller),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, i) {
                            return Padding(
                                padding: EdgeInsets.only(left: i == 0 ? 0 : 14),
                                child: GestureDetector(
                                  onTap: () {
                                    controller.changeIndexx(i);
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.4,
                                          color: controller.indexx == i
                                              ? AppColor.secandryColor
                                              : AppColor.backgroundScreen),
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          ImageAssets.get_image[i],
                                        ),
                                      ),
                                    ),
                                  ),
                                ));
                          }),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Select Size ",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomSizeProducts(controller: controller),
                    SizedBox(height: 20),
                    Text(
                      "Explain",
                      style: TextStyle(
                          fontSize: 18,
                          color: AppColor.backgroundScreen,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      data.itemsDec!,
                      style: Theme.of(context).textTheme.headline4,
                    )
                  ],
                )),
              ),
            ],
          ),
        ));
  }
}
