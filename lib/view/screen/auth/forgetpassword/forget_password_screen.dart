import 'package:ecommerece/controller/forget_password_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/core/functions/validinpout.dart';
import 'package:ecommerece/view/widget/auth/custom_button_matierial.dart';
import 'package:ecommerece/view/widget/auth/custom_text_file.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String> utheMap = {
      'password': ' ',
      'email': '',
    };
    final GlobalKey<FormState> fromKey = GlobalKey<FormState>();
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
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
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
                    child: Column(
                      children: [
                        Text(
                          "Check Email".tr,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontSize: 30),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Please , Enter Your Email Adress To Recive Averifiction code"
                              .tr,
                          style: Theme.of(context).textTheme.displaySmall,
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
                      flex: size.width > 600 ? 2 : 1,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: AppColor.white,
                        elevation: 8.0,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.bounceIn,
                          height: 100,
                          constraints: const BoxConstraints(minHeight: 260),
                          width: size.width * 0.75,
                          padding: const EdgeInsets.all(16),
                          child: Form(
                              key: fromKey,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    CustomTextFormEmail(
                                      map: utheMap,
                                      valid: (val) {
                                        return validInput(
                                            val!, 5, 100, 'email');
                                      },
                                    ),
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    CustomButtonOK(
                                        text: "Check",
                                        submit: () {
                                          controller.goToverfiction();
                                        })
                                  ],
                                ),
                              )),
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
