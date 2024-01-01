import 'package:ecommerece/controller/setting_contoller.dart';
import 'package:ecommerece/controller/theme_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/core/constant/imageassets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingSCreen extends StatelessWidget {
  const SettingSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingControllerImp controller = Get.put(SettingControllerImp());
    final HomeController _controllerLanguage = Get.put(HomeController());

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
                title: Obx(
                  () => DropdownButton(
                      hint: Text(_controllerLanguage.localData.value == "ar"
                          ? "العربية"
                          : "English"),
                      items: ['العربية', 'English']
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ))
                          .toList(),
                      onChanged: (value) {
                        // _controllerLanguage.switchTheme();
                        _controllerLanguage.changeLanguage(value.toString());

                        // Get.changeThemeMode(
                        //     _controllerLanguage.currentTheme.value);
                      }),
                ),
                leading: const Icon(Icons.language_outlined),
              ),
              Obx(
                () => ListTile(
                  onTap: () {
                    // _controllerLanguage.switchTheme();
                    _controllerLanguage.changeThemeData();
                  },
                  title: Text(
                      "${_controllerLanguage.currentTheme.value == ThemeMode.dark ? "الوضع الليلي" : "الوضع النهاري"}"),
                  leading: Icon(
                      _controllerLanguage.currentTheme.value == ThemeMode.dark
                          ? Icons.mode_night_outlined
                          : Icons.light_mode_outlined),
                ),
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
