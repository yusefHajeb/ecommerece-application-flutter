import 'package:ecommerece/controller/login_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/core/functions/alertexitapp.dart';
import 'package:ecommerece/core/functions/validinpout.dart';
import 'package:ecommerece/view/widget/login/custmtextformfile.dart';
import 'package:ecommerece/view/widget/login/customtextheader.dart';
import 'package:ecommerece/view/widget/login/customtextparagraph.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Sing In',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      backgroundColor: AppColor.white,
      body: WillPopScope(
        onWillPop: () {
          return alertExitApp();
        },
        child: SingleChildScrollView(
          // margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 77,
            width: MediaQuery.of(context).size.width,
            child: Form(
              key: controller.formState,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.,
                children: [
                  // const SizedBox(height: 10),
                  const CustomTextHeader(text: "2"),
                  const CustomTextParagraph(text: "3"),
                  const SizedBox(height: 63),
                  Flexible(
                      child: CustomTextFromFile(
                    hint: 'Enter Your Email',
                    label: "Email",
                    myController: controller.emailController,
                    sufixIcon: const Icon(Icons.email),
                    valid: (value) {
                      return validInput(value!, 5, 100, 'email');
                    },
                    // myController: passwordlContrller.text,
                  )),
                  Flexible(
                      child: CustomTextFromFile(
                    valid: (value) {
                      return validInput(value!, 5, 30, 'password');
                    },
                    hint: 'Enter Your Password',
                    label: "password",
                    myController: controller.emailController,
                    sufixIcon: Icon(Icons.lock_outlined),
                    // myController: passwordlContrller.text,
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
