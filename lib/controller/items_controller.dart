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
        itemsImage: ImageAssets.onBoardingThree,
        itemsName: "shorts",
        itemPrice: '1500',
        categoriesId: "1",
        categoriesName: 'man'),
    ItemsModel(
      itemsImage: ImageAssets.onBoardingOne,
      itemsName: "ti shirt",
      itemPrice: '200',
      categoriesId: "2",
      categoriesName: 'woman',
    ),
    ItemsModel(
        itemsImage: ImageAssets.onBoardingTow,
        itemsName: "shose",
        itemPrice: '1500',
        categoriesId: "3",
        categoriesName: 'kids'),
    ItemsModel(
        itemsImage: ImageAssets.onBoardingThree,
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
    setIdToShowItems(selectedCat.toString());
    listCat[selectedCat!].active = '1';

    print('You in onInit Items ====== $selectedCat!');
  }

  @override
  goToporducts() {
    // TODO: implement goToporducts
    throw UnimplementedError();
  }

  List<ItemsModel> itemsIndex = [];
  setIdToShowItems(String id) {
    itemsIndex = [];
    if (id == "0")
      itemsIndex.addAll(dataItems);
    else {
      dataItems.forEach((element) {
        if (element.categoriesId == id) itemsIndex.add(element);
      });
    }
  }

  List<ItemsModel> dataItems = [
    ItemsModel(
        itemsName: "MMD_R1 Shose",
        itemId: '1',
        itemsImage: ImageAssets.product1,
        itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
        itemPrice: "200.00",
        itemCat: 'Nike',
        categoriesId: '2'),
    ItemsModel(
        itemsName: "Kaotir",
        itemId: '2',
        itemsImage: ImageAssets.category3,
        itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
        itemPrice: "180.00",
        itemCat: 'addidas',
        categoriesId: '3'),
    ItemsModel(
        itemsName: "Kaotir",
        itemId: '3',
        itemsImage: ImageAssets.product2,
        itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
        itemPrice: "180.00",
        itemCat: 'addidas',
        categoriesId: '3'),
    ItemsModel(
        itemsName: "Ultraboost DNA Shose",
        itemId: '4',
        itemsImage: ImageAssets.product3,
        itemsDec: "Nike Running Shoses With Cooling Ventilation ",
        itemPrice: "180.00",
        itemCat: 'addidas',
        categoriesId: '3'),
    ItemsModel(
        itemsName: "Kaotir Shose",
        itemId: '5',
        itemsImage: ImageAssets.product4,
        itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
        itemPrice: "100.00",
        itemCat: 'addidas',
        categoriesId: '3'),
    ItemsModel(
        itemsName: "Kaotir Shose",
        itemId: '6',
        itemsImage: ImageAssets.product5,
        itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
        itemPrice: "100.00",
        itemCat: 'addidas',
        categoriesId: '3'),
    ItemsModel(
        itemsName: "Kaotir Shose",
        itemId: '7',
        itemsImage: ImageAssets.category1,
        itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
        itemPrice: "100.00",
        itemCat: 'Naik',
        categoriesId: '2'),
    ItemsModel(
        itemsName: "Kaotir Shose",
        itemId: '8',
        itemsImage: ImageAssets.category2,
        itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
        itemPrice: "100.00",
        itemCat: 'Naik',
        categoriesId: '2'),
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
