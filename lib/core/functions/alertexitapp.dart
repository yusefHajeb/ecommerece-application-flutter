import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "تنبية",
      middleText: 'هل تريد الخروج من التطبيق !',
      actions: [
        ElevatedButton(
          child: Text("Confirm"),
          onPressed: exit(0),
        ),
      ]);

  // ignore: dead_code
  return Future.value(false);
}
