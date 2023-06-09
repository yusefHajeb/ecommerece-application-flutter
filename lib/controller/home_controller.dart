import 'package:ecommerece/core/constant/data_cash.dart';
import 'package:ecommerece/core/constant/imageassets.dart';
import 'package:ecommerece/core/constant/routing.dart';
import 'package:ecommerece/core/services/services.dart';
import 'package:ecommerece/data/models/categoresmodels.dart';
import 'package:ecommerece/data/models/items_model.dart';
import 'package:ecommerece/view/screen/cart_screen.dart';
import 'package:ecommerece/view/screen/home.dart';
import 'package:ecommerece/view/screen/productsdetails.dart';
import 'package:ecommerece/view/screen/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeContrller extends GetxController {
  goToItems(List listCat, int selectedCat);
  initialData();
  goToProductsDetales();

  //exmple
  goToProduct(List dataItems, int selectedProduct);
}

class HomeContollerImp extends HomeContrller {
  late PageController pageController;
  bool folded = true;
  int _currentPage = 0;
  int currentIndex = 0;
  bool isPressed = true; // pressed lick
  bool isPressed2 = true;
  bool isHighlighted = true;

  // late StateRequest stateRequest;
  List categories = [];
  List items = [];

  clickOnButtonlick() {
    isPressed = !isPressed;
    update();
  }

  MyServices myService = Get.find();
  String? username;
  String? id;
  @override
  initialData() {
    username = myService.sharedPreferences.getString('username');
    id = myService.sharedPreferences.getString('id');
  }

  @override
  void onInit() {
    pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.8);
    // pageController = PageController(initialPage: )
    super.onInit();
  }

  List<Widget> listWidget = [
    Column(
      children: const [
        Material(
          child: Home(),
        )
      ],
    ),
    Column(
      children: [Material(child: Text("Faveret"))],
    ),
    Column(
      children: [Material(child: Text("Persson"))],
    ),
    CartScreen(),
    SettingSCreen(),
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
  // List x = [false, true, false, false];
  List<ItemsModel> dataItems = [
    ItemsModel(
        itemsName: "MMD_R1 Shose",
        itemId: '1',
        itemsImage: ImageAssets.onBordingOne,
        itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
        itemPrice: "200.00",
        itemCat: 'Nike',
        categoriesId: '1'),
    ItemsModel(
        itemsName: "Kaotir",
        itemId: '2',
        itemsImage: ImageAssets.onBordingTow,
        itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
        itemPrice: "180.00",
        itemCat: 'addidas',
        categoriesId: '2'),
    ItemsModel(
        itemsName: "Ultraboost DNA Shose",
        itemId: '3',
        itemsImage: ImageAssets.onBordingThree,
        itemsDec: "Nike Running Shoses With Cooling Ventilation ",
        itemPrice: "180.00",
        itemCat: 'Nike',
        categoriesId: '3'),
    ItemsModel(
        itemsName: "Kaotir Shose",
        itemId: '4',
        itemsImage: ImageAssets.onBordingOne,
        itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
        itemPrice: "100.00",
        itemCat: 'addidas',
        categoriesId: '4'),
    ItemsModel(
        itemsName: "Kaotir Shose",
        itemId: '4',
        itemsImage: ImageAssets.onBordingOne,
        itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
        itemPrice: "100.00",
        itemCat: 'addidas',
        categoriesId: '4'),
  ];

  int indexCatogory = 0;

  stateCategoryActive(int index) {
    listCat.forEach((element) {
      element.categoriesId != index
          ? element.active = '0'
          : element.active = '1';
    });
    update();
  }

  changePage(int cureent) {
    currentIndex = cureent;
    update();
  }

  // change(bool val) {
  //   val = !val;

  //   return val;
  // }

  @override
  goToItems(listCat, selectedCat) {
    Get.toNamed(AppRout.items, arguments: {
      'listCat': listCat,
      'selectedcat': selectedCat,
    });
  }

  int selectedProduct = 0;
  @override
  goToProduct(dataItems, selectedProduct) {
    // Get.toNamed(AppRout.productDetalis);
    Get.toNamed(AppRout.productDetalis,
        arguments: {"selected": selectedProduct});
  }

  @override
  goToProductsDetales() {
    // TODO: implement goToProductsDetales
    throw UnimplementedError();
  }
}
