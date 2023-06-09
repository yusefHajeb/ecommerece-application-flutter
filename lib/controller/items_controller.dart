import 'package:ecommerece/core/constant/imageassets.dart';
import 'package:ecommerece/data/models/categoresmodels.dart';
import 'package:ecommerece/data/models/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  goToporducts();
}

class ItemsControllerItm extends ItemsController {
  List<ItemsModel> Items = [
    ItemsModel(
        itemsImage: ImageAssets.onBordingThree,
        itemsName: "shorts",
        itemPrice: '1500',
        categoriesId: "1",
        categoriesName: 'man'),
    ItemsModel(
      itemsImage: ImageAssets.onBordingOne,
      itemsName: "ti shirt",
      itemPrice: '200',
      categoriesId: "2",
      categoriesName: 'woman',
    ),
    ItemsModel(
        itemsImage: ImageAssets.onBordingTow,
        itemsName: "shose",
        itemPrice: '1500',
        categoriesId: "3",
        categoriesName: 'kids'),
    ItemsModel(
        itemsImage: ImageAssets.onBordingThree,
        itemsName: "sandals",
        itemPrice: '1300',
        categoriesId: "4",
        categoriesName: 'boy'),
  ];

  List<dynamic> categories = [];
  int? selectedCat;
  @override
  void onInit() {
    super.onInit();
    categories = Get.arguments['listCat'];
    selectedCat = Get.arguments['selectedcat'];
    listCat[selectedCat!].active = '1';

    print('You in onInit Items ====== $selectedCat!');
  }

  @override
  goToporducts() {
    // TODO: implement goToporducts
    throw UnimplementedError();
  }

  List<ItemsModel> dataItems = [
    ItemsModel(
      itemsName: "MMD_R1 Shose",
      itemId: '1',
      categoriesImage: ImageAssets.onBordingOne,
      itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
      itemPrice: "200.00",
      itemCat: 'Nike',
    ),
    ItemsModel(
      itemsName: "Kaotir Shose",
      itemId: '2',
      categoriesImage: ImageAssets.onBordingOne,
      itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
      itemPrice: "180.00",
      itemCat: 'addidas',
    ),
    ItemsModel(
      itemsName: "Ultraboost DNA Shose",
      itemId: '3',
      categoriesImage: ImageAssets.onBordingOne,
      itemsDec: "Nike Running Shoses With Cooling Ventilation ",
      itemPrice: "180.00",
      itemCat: 'Nike',
    ),
    ItemsModel(
      itemsName: "Kaotir Shose",
      itemId: '4',
      categoriesImage: ImageAssets.onBordingOne,
      itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
      itemPrice: "100.00",
      itemCat: 'addidas',
    ),
  ];
  List<CategoriesModel> listCat = [
    CategoriesModel(
        categoriesId: "1",
        categoriesName: "All",
        categoriesNameAr: "الكل",
        icon: Icons.all_inbox,
        active: '0'),
    CategoriesModel(
        categoriesId: "2",
        categoriesName: "Nike",
        categoriesNameAr: "نايك",
        icon: Icons.sports_hockey_outlined,
        active: '0'),
    CategoriesModel(
        categoriesId: "3",
        categoriesName: "Addidas",
        categoriesNameAr: "اديداس",
        icon: Icons.add_ic_call_outlined,
        active: '0'),
    CategoriesModel(
        categoriesId: "4",
        categoriesName: "Other",
        categoriesNameAr: "اخرى",
        icon: Icons.devices_other,
        active: '0'),
  ];
  stateCategoryActive(int index) {
    // listCat[index].active == '0'
    //     ? listCat[index].active == '1'
    //     : listCat[index].active == '0';

    listCat.forEach((element) {
      element.categoriesId != index.toString()
          ? element.active = '0'
          : element.active = '1';
    });
    selectedCat = index;
    update();
  }
}
