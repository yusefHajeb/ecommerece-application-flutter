import 'dart:convert';

// import 'package:dartz/dartz.dart';
import 'package:ecommerece/core/class/curd.dart';
import 'package:ecommerece/core/class/staterequest.dart';
import 'package:ecommerece/core/functions/handlong.dart';
import 'package:ecommerece/data/data_source/static/remote/test_data.dart';
import 'package:ecommerece/core/constant/link_api.dart';
// import 'package:ecommerece/view/test_vew_view.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class TestController extends GetxController {
  // late Curd curd;
  // Curd card = Curd();
  TestData testData = TestData(Curd());

  List data = [];
  bool isLoading = false;
  StatusRequest statusRequest = StatusRequest.loading;

  //  var client = http.Client();

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    // print("$response-----------------controller");
    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.success) {
      // data.addAll(json.decode(response.body));
      data.addAll(response['data']);
    }
    update();
  }

  getData2() async {
    var response = await http.post(
      Uri.parse(AppLinke.usersData),
      headers: {
        "Content-Type": "application/json",
      },
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      print("you in Curd ===============");
      Map responsebody = jsonDecode(response.body);

      data.addAll(responsebody['data']);
    }
    print('error');
    update();
  }

  @override
  void onInit() {
    // getResults();
    getData();
    // getData2();
    print(data);
    super.onInit();
  }
}
