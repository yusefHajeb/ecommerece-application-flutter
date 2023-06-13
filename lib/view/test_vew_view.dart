import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerece/controller/test_controller.dart';
import 'package:ecommerece/core/class/curd.dart';
import 'package:ecommerece/core/class/staterequest.dart';
import 'package:ecommerece/link_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

// class TestData {
//   Curd crud = Curd();

//   TestData(this.crud);

//   getData() async {
//     var response = await crud.postData(AppLinke.usersData, {});
//     print("you in TestData ====$response");
//     return response.fold((l) => l, (r) => r);
//   }
// }
var client = http.Client();
// Future<List> fetchData() async {
//   final response = await client.get(Uri.parse(
//     AppLinke.usersData,
//   ));
//   // .then((response) => print(response.body))
//   // .catchError((error) => print(error));
//   if (response.statusCode == 200) {
//     return jsonDecode(response.body);
//   } else {
//     throw Exception('Failed to load data');
//   }
// }

class TestView extends StatelessWidget {
  const TestView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello "),
      ),
      body: GetBuilder<TestController>(builder: (conterller) {
        if (conterller.statusRequest == StatusRequest.loading) {
          return const Center(child: Text("loading"));
        } else if (conterller.statusRequest == StatusRequest.serverfailure) {
          print("${conterller.data} ============");
          return Center(child: Text("Server faluer"));
        } else {
          // return FutureBuilder<List<dynamic>>(
          //     future: conterller.fetchData2(),
          //     builder: (BuildContext context, AsyncSnapshot snapshot) {
          //       if (snapshot.hasData) {
          //         return ListView.builder(
          //           itemCount: conterller.data.length,
          //           itemBuilder: (BuildContext context, int index) {
          //             return ListTile(
          //               title: Text(conterller.data[index]['users_name']),
          //               subtitle: Text(conterller.data[index]['users_email']),
          //             );
          //           },
          //         );
          //       } else if (snapshot.hasError) {
          //         return Text('${snapshot.error}');
          //       }
          //       // By default, show a loading spinner.
          //       return const CircularProgressIndicator();
          //     });

          // return FutureBuilder<List<dynamic>>(
          //   future: conterller.getData(),
          //   builder: (contex, snapshot) {
          //     print("------------------listmain ${conterller.data}");
          //     return ListView.builder(
          //       itemCount: snapshot.data?.length,
          //       itemBuilder: (BuildContext context, int index) {
          //         final item = snapshot.data![index];
          //         return Card(
          //           child: ListTile(title: item['users_name']),
          //         );
          //       },
          //     );
          //   },
          // );

          return ListView.builder(
            itemBuilder: (context, index) {
              return Text("${conterller.data}");
            },
            itemCount: conterller.data.length,
          );
        }
      }),
    );
  }
}
