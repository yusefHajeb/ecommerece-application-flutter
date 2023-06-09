import 'dart:math';

import 'package:ecommerece/controller/login_controller.dart';
import 'package:ecommerece/controller/resetpassword_controller.dart';
import 'package:ecommerece/controller/verfiction_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/core/functions/alertexitapp.dart';
import 'package:ecommerece/core/functions/validinpout.dart';

import 'package:ecommerece/view/widget/auth/custom_button_matierial.dart';
import 'package:ecommerece/view/widget/auth/custom_text_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerfiryCode extends StatelessWidget {
  const VerfiryCode({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    VerifictionControllerImp controller = Get.put(VerifictionControllerImp());
    return Scaffold(
      // appBar: AppBar(),
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
                            "Check Code".tr,
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
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
                      flex: size.width > 600 ? 2 : 1,
                      child: OtpTextField(
                        numberOfFields: 5,
                        textStyle: TextStyle(color: AppColor.white),
                        focusedBorderColor: AppColor.secandryColor,
                        decoration: const InputDecoration(
                          focusColor: AppColor.secandryColor,
                          hoverColor: AppColor.secandryColor,
                        ),
                        cursorColor: AppColor.gray,

                        borderColor: AppColor.secandryColor,
                        //set to true to show as box or false to show as dash
                        showFieldAsBox: true,
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                        //runs when every textfield is filled
                        onSubmit: (String verificationCode) {
                          controller.goToResetPassword();
                          // showDialog(
                          //     context: context,
                          //     builder: (context) {
                          //       return AlertDialog(
                          //         title: const Text("Verification Code"),
                          //         content:
                          //             Text('Code entered is $verificationCode'),
                          //       );
                          // });
                        }, // end onSubmit
                      ),
                    )
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

// class ForgetPassowrdScreen extends StatefulWidget {
//   const ForgetPassowrdScreen({super.key});

//   @override
//   State<ForgetPassowrdScreen> createState() => _ForgetPassowrdScreenState();
// }

// enum AuthMode { loding, singleUp }

// class _ForgetPassowrdScreenState extends State<ForgetPassowrdScreen>
//     with SingleTickerProviderStateMixin {
//   final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();

//   Map<String, String> _utheMap = {
//     'password': ' ',
//     'email': '',
//   };
//   bool _isLoding = false;

//   // FocusNode _focusNode = FocusNode();
//   @override
//   Widget build(BuildContext context) {
//     LoginControllerImp controller = Get.put(LoginControllerImp());
//     final size = MediaQuery.of(context).size;
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       color: AppColor.white,
//       elevation: 8.0,
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.bounceIn,
//         height: 100,
//         constraints: const BoxConstraints(minHeight: 260),
//         width: size.width * 0.75,
//         padding: const EdgeInsets.all(16),
//         child: Form(
//             key: _fromKey,
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   CustomTextFormEmail(
//                     map: _utheMap,
//                     valid: (val) {
//                       return validInput(val!, 5, 100, 'email');
//                     },
//                   ),
//                   const SizedBox(
//                     height: 50,
//                   ),
//                 ],
//               ),
//             )),
//       ),
//     );
//   }
// }
