import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextConfirmPassword extends StatelessWidget {
  final bool varEnable;
  final bool showButton;
  final String valuePassword;
  final String? Function(String?) valid;

  TextEditingController? controller;
  CustomTextConfirmPassword(
      {super.key,
      required this.varEnable,
      this.controller,
      required this.valuePassword,
      required this.showButton,
      required this.valid});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: varEnable,
      obscureText: true,
      decoration: InputDecoration(
          errorText: null,
          labelText: 'Confirm Password',
          prefixIcon: const Icon(Icons.person_outline),
          labelStyle: Theme.of(context).textTheme.headlineMedium,
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
