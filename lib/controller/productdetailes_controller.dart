import 'package:ecommerece/core/constant/imageassets.dart';
import 'package:ecommerece/data/models/items_model.dart';
import 'package:get/get.dart';

abstract class ProductDetailesController extends GetxController {}

class ProductDetailesControllerImp extends ProductDetailesController {
  @override
  int indexx = 0;
  int incrementOrDecrease = 0;
  int indexsize = 0;
  String x = '';
  icrementToBasket() {
    incrementOrDecrease++;
    update();
  }

  descreaseBasket() {
    if (incrementOrDecrease > 0) {
      incrementOrDecrease--;
      update();
    }
  }

  changeIndexx(int i) {
    indexx = i;
    update();
  }

  changeSize(int i) {
    indexsize = i;
    update();
  }

  List<ItemsModel> dataDetales = [
    ItemsModel(
      itemsName: "MMD_R1 Shose",
      itemId: '1',
      itemsImage: ImageAssets.onBordingOne,
      itemsDec:
          "Get in the Queue. Get the goods.Create or Sing Get in the Queue. Get the goods.Create or SingGet in the Queue. Get the goods.Create or SingGet in the Queue. Get the goods.Create or SingGet in the Queue. Get the goods.Create or SingGet in the Queue. Get the goods.Create or SingGet in the Queue. Get the goods.Create or SingGet in the Queue. Get the goods.Create or SingGet in the Queue. Get the goods.Create or Sing",
      itemPrice: "200.00",
      itemCat: 'Nike',
    ),
    ItemsModel(
      itemsName: "Kaotir",
      itemId: '2',
      itemsImage: ImageAssets.onBordingTow,
      itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
      itemPrice: "180.00",
      itemCat: 'addidas',
    ),
    ItemsModel(
      itemsName: "Ultraboost DNA Shose",
      itemId: '3',
      itemsImage: ImageAssets.onBordingThree,
      itemsDec: "Nike Running Shoses With Cooling Ventilation ",
      itemPrice: "180.00",
      itemCat: 'Nike',
    ),
    ItemsModel(
      itemsName: "Kaotir Shose",
      itemId: '4',
      itemsImage: ImageAssets.onBordingOne,
      itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
      itemPrice: "100.00",
      itemCat: 'addidas',
    ),
    ItemsModel(
      itemsName: "Kaotir Shose",
      itemId: '4',
      itemsImage: ImageAssets.onBordingOne,
      itemsDec: "Adidas Running Shoses With Cooling Ventilation ",
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
    // TODO: implement onInit
    print("You in onInit progectDetalis");
    super.onInit();
  }
}
