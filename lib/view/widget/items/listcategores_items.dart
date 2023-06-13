import 'package:ecommerece/controller/items_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/data/models/categoresmodels.dart';
import 'package:ecommerece/view/widget/bouncingbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCatagoryItems extends StatelessWidget {
  const CustomCatagoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemsControllerItm>(
      builder: (controller) => Container(
          height: 50,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, i) => const SizedBox(
                    width: 18,
                  ),
              itemCount: controller.listCat.length,
              itemBuilder: (context, i) {
                // controller.indexCatogory = i;
                return Bouncing(
                    onPress: () {
                      // controller.goToItems(controller.listHeaderCatogery, i);
                    },
                    child: CatagoresItem(
                        data: controller.listCat[i], selected: i));
              })),
    );
  }
}

class CatagoresItem extends StatelessWidget {
  final CategoriesModel data;
  final int selected;
  CatagoresItem({required this.data, required this.selected});

  @override
  Widget build(BuildContext context) {
    // bool change = false;
    Get.put(ItemsControllerItm());
    return GetBuilder<ItemsControllerItm>(
      builder: (controller) => AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn,

        width: controller.selectedCat == selected ? 150 : 50,
        // height: 30,
        // curve: Curves.,
        decoration: BoxDecoration(
          color: controller.selectedCat != selected
              ? Colors.grey[200]
              : AppColor.backgroundScreen,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: controller.selectedCat == selected
                ? AppColor.white
                : AppColor.backgroundScreen,
            // width: 1,
          ),
          boxShadow: kElevationToShadow[2],
        ),
        child: InkWell(
          onTap: () {
            controller.stateCategoryActive(selected);

            print(selected.toString());
            // print(controller.listHeaderCatogery[z].flag);
          },
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(left: 4),
                  margin: EdgeInsets.only(left: 7),
                  decoration: BoxDecoration(
                      // color: Colors.grey[200],
                      ),
                  child: Container(
                    width: 48,

                    height: 42,
                    // duration: const Duration(milliseconds: 200),
                    child: Material(
                        type: MaterialType.button,
                        color: Colors.grey[200],
                        clipBehavior: Clip.antiAlias,
                        animationDuration: Duration(milliseconds: 900),
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                        child: Icon(data.icon)),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 12, bottom: 10),
                child: controller.selectedCat == selected
                    ? Text(data.categoriesName!,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline1)
                    : null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
