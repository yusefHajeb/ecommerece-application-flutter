import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  SharedPreferences? sharedPreferences;
  Future<MyServices> inite() async {
    await Firebase.initializeApp();
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

// the function works every run the apk
initialServices() async {
  // put Async used with function async ,to work fetch the function
  await Get.putAsync(() => MyServices().inite());
}
