import 'package:ecommerece/controller/setting_contoller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/core/constant/imageassets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingSCreen extends StatelessWidget {
  const SettingSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingControllerImp controller = Get.put(SettingControllerImp());
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: Get.height / 3,
            color: AppColor.backgroundScreen,
          ),
          Positioned(
            top: Get.height / 3.7,
            right: Get.width / 2.7,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColor.backgroundScreen,
                borderRadius: BorderRadius.circular(50),
              ),
              child: CircleAvatar(
                radius: 47,
                backgroundColor: Colors.grey[200],
                backgroundImage: const AssetImage(ImageAssets.onBoardingThree),
              ),
            ),
          )
        ],
      ),
      const SizedBox(
        height: 100,
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          child: Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  "Notification",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                leading: const Icon(Icons.notifications_active_outlined),
              ),
              ListTile(
                onTap: () {},
                title: const Text("Adress "),
                leading: const Icon(Icons.location_on_outlined),
              ),
              ListTile(
                onTap: () {},
                title: const Text("About us "),
                leading: const Icon(Icons.call),
              ),
              ListTile(
                onTap: () {
                  controller.logOut();
                },
                title: const Text("Logout"),
                leading: const Icon(Icons.logout),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
