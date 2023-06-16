// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class TestView extends StatefulWidget {
//   @override
//   _LocalhostJsonScreenState createState() => _LocalhostJsonScreenState();
// }

// class _LocalhostJsonScreenState extends State<TestView> {
//   List data = [];
//   final http.Client client = http.Client();
//   getData() async {
//     var response;
//     print('============ getData');
//     try {
//       response = await client.get(
//           Uri.parse("https://ecommercewewe.000webhostapp.com/connect.php"));
//       // print(jsonDecode(response.body) + "====== rsponse");
//       setState(() {
//         data == json.decode(response.body);
//       });
//     } catch (e) {
//       print("-------error$e");
//     }
//     // var response =
//     //     await client.get(Uri.parse("http://172.18.48.1/ecommerce/connect.php"));
//     // print(json.decode(response.body) + "====== rsponse");
//     // print(jsonDecode(response.body));
//     if (response.statusCode == 200) return json.decode(response.body);
//   }

//   @override
//   void initState() {
//     getData();
//     super.initState();
//     print(data);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Localhost JSON Data'),
//       ),
//       body: FutureBuilder(
//           future: getData(),
//           builder: (context, snapshot) {
//             print(snapshot.hasData);
//             return Center(
//               child: ListView.builder(
//                 itemCount: data.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   if (snapshot.hasData) {
//                     print("yes is has data");
//                     return Container(
//                       height: 600,
//                       width: double.infinity,
//                       child: ListTile(
//                         title: Text(
//                           snapshot.toString(),
//                           style: TextStyle(color: Colors.red, fontSize: 25),
//                         ),
//                         // subtitle: Text(data[index]['users_phone']),
//                       ),
//                     );
//                   } else {
//                     return Center(child: Text("==="));
//                   }
//                 },
//               ),
//             );
//           }),
//     );
//   }
// }

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
Future<List> fetchData() async {
  final response = await client.get(Uri.parse(
    AppLinke.usersData,
  ));
  // .then((response) => print(response.body))
  // .catchError((error) => print(error));
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load data');
  }
}

class TestView extends StatelessWidget {
  const TestView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello "),
      ),
      body: GetBuilder<TestController>(builder: (controller) {
        if (controller.statusRequest == StatusRequest.loading) {
          return const Center(child: Text("loading"));
        } else if (controller.statusRequest == StatusRequest.serverfailure) {
          print("${controller.data} ============");
          return Center(child: Text("Server faluer"));
        } else {
          return FutureBuilder<void>(
              future: controller.getData(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: controller.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(controller.data[index]['users_name']),
                        subtitle: Text(controller.data[index]['users_email']),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              });

          // return FutureBuilder<List<dynamic>>(
          //   future: controller.getData(),
          //   builder: (contex, snapshot) {
          //     print("------------------listmain ${controller.data}");
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

          // return ListView.builder(
          //   itemBuilder: (context, index) {
          //     return Text("${controller.data}");
          //   },
          //   itemCount: controller.data.length,
          // );
          // }
        }
      }),
    );
  }
}
