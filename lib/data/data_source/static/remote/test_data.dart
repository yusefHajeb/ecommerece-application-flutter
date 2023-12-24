import 'package:ecommerece/core/constant/link_api.dart';

import '../../../../core/class/curd.dart';

class TestData {
  Curd crud = Curd();

  TestData(this.crud);

  getData() async {
    var response = await crud.postData(AppLinke.usersData, {});
    return response.fold((l) => l, (r) => r);
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
