import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormEmail extends StatelessWidget {
  final Map<String, String> map;
  final String? Function(String?) valid;

  // final FocusNode? focusNode;
  TextEditingController? controller;

  CustomTextFormEmail(
      {super.key, this.controller, required this.map, required this.valid});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        cursorColor: AppColor.backgroundScreen,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.email_outlined),
            labelText: "E_mail",
            labelStyle: Theme.of(context).textTheme.headlineMedium,
            hoverColor: AppColor.backgroundScreen),
        keyboardType: TextInputType.emailAddress,
        controller: controller,
        validator: valid);
  }
}
