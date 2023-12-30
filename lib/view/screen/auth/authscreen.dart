// import 'dart:math';

import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/core/functions/alertexitapp.dart';
import 'package:ecommerece/view/widget/auth/custom_auth_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthSceen extends StatelessWidget {
  const AuthSceen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(),
      // ignore: deprecated_member_use
      body: WillPopScope(
        onWillPop: () {
          return alertExitApp();
        },
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                AppColor.backgroundScreen,
                AppColor.backgroundScreen,
              ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: size.height,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 30),
                      child: Column(
                        children: [
                          Text(
                            "2".tr,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontSize: 30),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "3".tr,
                            style: Theme.of(context).textTheme.headline3,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    // Flexible(child: CustomHeaderNameShop()),
                    Flexible(
                        flex: size.width > 600 ? 2 : 1, child: const AuthCart())
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
