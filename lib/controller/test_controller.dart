import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerece/core/class/curd.dart';
import 'package:ecommerece/core/class/staterequest.dart';
import 'package:ecommerece/core/functions/handlong.dart';
import 'package:ecommerece/data/datasorce/static/remote/test_data.dart';
import 'package:ecommerece/link_api.dart';
import 'package:ecommerece/view/test_vew_view.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class TestController extends GetxController {
  // late Curd curd;
  TestData testData = TestData(Curd());

  List data = [];
  bool isLoading = false;
  StatusRequest? statusRequest;
  void fetchData() async {
    try {
      isLoading = true;
      update();
      data = await TestData.fetchDataFromHost() ??
          [
            {"sdsds": "dfd"}
          ];
    } finally {
      update();
      print("data fetch done");
    }
  }

  static var client = http.Client();
  Future<List<dynamic>> fetchData2() async {
    final response =
        await client.get(Uri.parse("http://localhost:8012/ecommerce/test.php"));
    update();
    // .then((response) => print(response.body))
    // .catchError((error) => print(error));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List> getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      data.addAll(json.decode(response.body));
      print(json.decode(response).toString() + "-----------------");
      update();
      return data;
    }
    return data;
  }

  @override
  void onInit() {
    // fetchData();
    // TODO: implement onInit
    getData();
    super.onInit();
  }
}
