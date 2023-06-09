import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "تنبية",
      middleText: 'هل تريد الخروج من التطبيق !',
      actions: [
        ElevatedButton(onPressed: exit(0), child: Text("Confirm")),
        ElevatedButton(onPressed: exit(1), child: const Text("cancel")),
      ]);

  return Future.value(false);
}
