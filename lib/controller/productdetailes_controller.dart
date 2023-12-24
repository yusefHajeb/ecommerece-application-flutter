import 'package:ecommerece/core/constant/imageassets.dart';
import 'package:ecommerece/data/models/items_model.dart';
import 'package:get/get.dart';

abstract class ProductDetailesController extends GetxController {}

class ProductDetailsControllerImp extends ProductDetailesController {
  int index = 0;
  int incrementOrDecrease = 0;
  int indexSize = 0;
  String x = '';
  icrementToBasket() {
    incrementOrDecrease++;
    update();
  }

  describesBasket() {
    if (incrementOrDecrease > 0) {
      incrementOrDecrease--;
      update();
    }
  }

  changeIndex(int i) {
    index = i;
    update();
  }

  changeSize(int i) {
    indexSize = i;
    update();
  }

  List<ItemsModel> dataDetales = [
    ItemsModel(
      itemsName: "MMD_R1 Shose",
      itemId: '1',
      itemsImage: ImageAssets.onBoardingOne,
      itemsDec:
          "Get in the Queue. Get the goods.Create or Sing Get in the Queue. Get the goods.Create or SingGet in the Queue. Get the goods.Create or SingGet in the Queue. Get the goods.Create or SingGet in the Queue. Get the goods.Create or SingGet in the Queue. Get the goods.Create or SingGet in the Queue. Get the goods.Create or SingGet in the Queue. Get the goods.Create or SingGet in the Queue. Get the goods.Create or Sing",
      itemPrice: "200.00",
      itemCat: 'Nike',
    ),
    ItemsModel(
      itemsName: "Kaotir",
      itemId: '2',
      itemsImage: ImageAssets.onBoardingTow,
      itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
      itemPrice: "180.00",
      itemCat: 'addidas',
    ),
    ItemsModel(
      itemsName: "Ultraboost DNA Shoes",
      itemId: '3',
      itemsImage: ImageAssets.onBoardingThree,
      itemsDec: "Nike Running Shoses With Cooling Ventilation ",
      itemPrice: "180.00",
      itemCat: 'Nike',
    ),
    ItemsModel(
      itemsName: "Kaotir Shose",
      itemId: '4',
      itemsImage: ImageAssets.onBoardingOne,
      itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
      itemPrice: "100.00",
      itemCat: 'addidas',
    ),
    ItemsModel(
      itemsName: "Kaotir Shose",
      itemId: '4',
      itemsImage: ImageAssets.onBoardingOne,
      itemsDec: "Adidas Running Shoes With Cooling Ventilation ",
      itemPrice: "100.00",
      itemCat: 'addidas',
    ),
  ];

  // List<dynamic> data2 = [];
  int selected = 0;
  @override
  void onInit() {
    // data2 = Get.arguments['dataItems'];
    selected = Get.arguments['selected'];
    print("You in onInit progectDetalis");
    super.onInit();
  }
}
