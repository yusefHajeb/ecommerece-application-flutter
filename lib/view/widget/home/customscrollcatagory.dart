import 'package:ecommerece/controller/home_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/data/models/categoresmodels.dart';
import 'package:ecommerece/view/widget/bouncingbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCatagoryHeader extends StatelessWidget {
  const CustomCatagoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeContollerImp>(
      builder: (controller) => Container(
          height: 50,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, i) => const SizedBox(
                    width: 18,
                  ),
              itemCount: controller.listCat.length,
              itemBuilder: (context, i) {
                controller.indexCatogory = i;
                return Bouncing(
                    onPress: () {
                      // controller.goToItems(controller.listCat, i);
                    },
                    child: CatagoryHeader2(
                        data: controller.listCat[i], selected: i));
              })),
    );
  }
}

// class CatagoryHeader extends StatelessWidget {
//   final CategoriesModel data;
//   bool flag;
//   final int z;
//   final String title;
//   final Icon icon;
//   final List list;
//   CatagoryHeader(
//       {required this.flag,
//       required this.title,
//       required this.icon,
//       required this.z,
//       required this.list,
//       required this.data});

//   @override
//   Widget build(BuildContext context) {
//     // bool change = false;
//     Get.put(HomeContollerImp());
//     return GetBuilder<HomeContollerImp>(
//       builder: (controller) => AnimatedContainer(
//         duration: const Duration(microseconds: 400),
//         width: controller.listHeaderCatogery[z].flag ? 56 : 140,
//         height: 30,
//         // curve: Curves.,
//         decoration: BoxDecoration(
//             color: controller.listHeaderCatogery[z].flag
//                 ? Colors.grey[200]
//                 : AppColor.backgroundScreen,
//             borderRadius: BorderRadius.circular(30),
//             border: Border.all(
//               color: controller.listHeaderCatogery[z].flag
//                   ? AppColor.white
//                   : AppColor.backgroundScreen,
//               width: 1,
//             ),
//             boxShadow: kElevationToShadow[2]),
//         child: InkWell(
//           onTap: () {
//             // controller.stateButtonCatogory(z);

//             print(controller.listHeaderCatogery[z].flag);
//           },
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             shrinkWrap: true,
//             children: [
//               Center(
//                 child: Container(
//                   padding: EdgeInsets.only(left: 4),
//                   margin: EdgeInsets.only(
//                       left: !controller.listHeaderCatogery[z].flag ? 5 : 0),
//                   decoration: BoxDecoration(
//                       // color: Colors.grey[200],
//                       ),
//                   child: AnimatedContainer(
//                     width: 48,
//                     height: 42,
//                     duration: const Duration(milliseconds: 200),
//                     child: Material(
//                         type: MaterialType.button,
//                         color: Colors.grey[200],
//                           clipBehavior: Clip.antiAlias,
//                         animationDuration: Duration(milliseconds: 900),
//                         borderRadius: BorderRadius.all(Radius.circular(32)),
//                         child: controller.listHeaderCatogery[z].icon),
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.only(left: 12, bottom: 10),
//                 child: !controller.listHeaderCatogery[z].flag
//                     ? Text(title,
//                         textAlign: TextAlign.center,
//                         style: Theme.of(context).textTheme.headline1)
//                     : null,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class CatagoryHeader2 extends StatelessWidget {
  final CategoriesModel data;
  final int selected;
  CatagoryHeader2({required this.data, required this.selected});

  @override
  Widget build(BuildContext context) {
    // bool change = false;
    Get.put(HomeContollerImp());
    return GetBuilder<HomeContollerImp>(
      builder: (controller) => AnimatedContainer(
        duration: const Duration(microseconds: 400),
        width: data.active == '0' ? 56 : 140,
        height: 30,
        // curve: Curves.,
        decoration: BoxDecoration(
            color: data.active == '0'
                ? Colors.grey[200]
                : AppColor.backgroundScreen,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: data.active == '0'
                  ? AppColor.white
                  : AppColor.backgroundScreen,
              width: 1,
            ),
            boxShadow: kElevationToShadow[2]),
        child: InkWell(
          onTap: () {
            controller.stateCategoryActive(selected);
            controller.goToItems(controller.listCat, selected);
            // print(controller.listHeaderCatogery[z].flag);
          },
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(left: 4),
                  margin: EdgeInsets.only(left: data.active == '0' ? 5 : 0),
                  decoration: BoxDecoration(
                      // color: Colors.grey[200],
                      ),
                  child: AnimatedContainer(
                    width: 48,
                    height: 42,
                    duration: const Duration(milliseconds: 200),
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
                child: data.active == '1'
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
