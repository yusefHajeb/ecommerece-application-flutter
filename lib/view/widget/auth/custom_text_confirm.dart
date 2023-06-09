import 'package:ecommerece/controller/login_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomTextConfiremPassword extends StatelessWidget {
  final bool varEnable;
  final bool showButton;
  final String valuePassword;
  final String? Function(String?) valid;

  TextEditingController? controller;
  CustomTextConfiremPassword(
      {super.key,
      required this.varEnable,
      this.controller,
      required this.valuePassword,
      required this.showButton,
      required this.valid});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp control = Get.put(LoginControllerImp());
    return TextFormField(
      // focusNode: _focusNode,
      controller: controller,
      enabled: varEnable,
      obscureText: true,
      decoration: InputDecoration(
          errorText: null,
          labelText: 'Confirem Password',
          prefixIcon: const Icon(Icons.person_outline),
          labelStyle: Theme.of(context).textTheme.headline4,
          focusColor: AppColor.backgroundScreen),
      keyboardType: TextInputType.emailAddress,
      validator: valid,

      //   if (varEnable) {
      //     if (val.toString().isEmpty) {
      //       return "enter confirem password, please";
      //     } else {
      //       control.changeValueForgetButton();
      //       print(control.showButtonForgent.toString());
      //       print('===================');
      //       return "Password do not match !";
      //     }
      //   } else {
      //     return null;
      //   }
      // },
      //  varEnable
      //     ? val.toString().isEmpty
      //         ? "enter confirem password, please"
      //         : (val != valuePassword)
      //             ? "Password do not match !. $varEnable=true'"
      //             : null
      //     : '',

      onSaved: (val) {
        // _utheMap['email'] = val!;
      },
      maxLines: 1,
      maxLength: 30,
      buildCounter: (BuildContext context,
              {int? currentLength, int? maxLength, bool? isFocused}) =>
          null,
    );
  }
}
