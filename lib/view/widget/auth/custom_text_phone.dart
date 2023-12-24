import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomPhoneValue extends StatelessWidget {
  final bool varEnable;
  TextEditingController? controller;
  CustomPhoneValue({super.key, required this.varEnable, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // focusNode: _focusNode,
      controller: controller,
      enabled: varEnable,
      obscureText: true,
      decoration: InputDecoration(
          errorText: null,
          labelText: 'Phone',
          prefixIcon: const Icon(Icons.lock_outline),
          labelStyle: Theme.of(context).textTheme.headlineMedium,
          focusColor: AppColor.backgroundScreen),
      keyboardType: TextInputType.emailAddress,
      validator: (val) => varEnable
          ? val.toString().isEmpty
              ? "Enter your phone please"
              : ""
          : null,
      onSaved: (val) {},
      maxLines: 1,
      maxLength: 30,
      buildCounter: (BuildContext context,
              {int? currentLength, int? maxLength, bool? isFocused}) =>
          null,
    );
  }
}
