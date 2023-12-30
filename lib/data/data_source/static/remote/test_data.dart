import 'dart:convert';

import 'package:ecommerece/core/class/staterequest.dart';
import 'package:ecommerece/core/constant/link_api.dart';
import 'package:get/get.dart';

import '../../../../core/class/curd.dart';

class TestData extends GetxController {
  Curd crud = Curd();
  String ecommirice = '';
  TestData(this.crud);
  List? data;
  late StatusRequest statusRequest;
  Map<String, dynamic>? dataMap = {};
  getData() async {
    var response = await Curd.getData(AppLike.usersData);

    return response.fold((failure) {
      statusRequest = StatusRequest.failure;
    }, (success) {
      print("=========success ----- ${success['data']}");
      data?.addAll(json.decode(success['data']));
      statusRequest = StatusRequest.success;
      print("===============================after update");
      update();
    });
  }

//   getData() async {
//     var response = await crud.postData(AppLinke.usersData, {});
//     print("you in TestData ====$response");
//     return response.fold((l) => l, (r) => r);
//   }
// }

  // static Future<dynamic> fetchDataFromHost() async {
  //   try {
  //     var response = await client.get(Uri.parse(AppLinke.usersData));
  //     print(response.body + "=========");
  //     if (response.statusCode == 200) {
  //       return response.body;
  //     }
  //   } catch (e) {
  //     return null;
  //   }
  // }
}
