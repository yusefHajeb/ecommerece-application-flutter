import 'package:ecommerece/controller/setting_contoller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/core/constant/imageassets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class SettingSCreen extends StatelessWidget {
  const SettingSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingControllerImp controller = Get.put(SettingControllerImp());
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Stack(
        clipBehavior: Clip.none,
        // alignment: Alignment.center,
        children: [
          Container(
            height: Get.height / 3,
            color: AppColor.backgroundScreen,
            // alignment: Alignment.center,
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
                backgroundImage: AssetImage(ImageAssets.onBordingThree),
              ),
            ),
          )
        ],
      ),
      SizedBox(
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
                  style: Theme.of(context).textTheme.headline2,
                ),
                leading: Icon(Icons.notifications_active_outlined),
              ),
              ListTile(
                onTap: () {},
                title: Text("Adress "),
                leading: Icon(Icons.location_on_outlined),
              ),
              ListTile(
                onTap: () {},
                title: Text("About us "),
                leading: Icon(Icons.call),
              ),
              ListTile(
                onTap: () {
                  controller.logOut();
                },
                title: Text("Logout"),
                leading: Icon(Icons.logout),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
