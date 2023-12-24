import 'package:ecommerece/controller/successresetpassword_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/view/widget/auth/custom_button_matierial.dart';
// import 'package:ecommerece/view/widget/auth/custom_text_file.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    // final GlobalKey<FormState> fromKey = GlobalKey<FormState>();
    SuccesSResetPasswordControllerImp controller =
        Get.put(SuccesSResetPasswordControllerImp());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              AppColor.white,
              AppColor.white,
            ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
                child: Column(
                  children: [
                    Text('Success',
                        style: Theme.of(context).textTheme.displayLarge),
                    const Center(
                      child: Icon(
                        Icons.check_circle_outline,
                        size: 200,
                        color: AppColor.secandryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text('Ok Tm Enasha hesaback success'),
                    const Spacer(),
                    CustomButtonOK(
                      text: "Go To Login",
                      submit: () {
                        controller.goToLogin();
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
