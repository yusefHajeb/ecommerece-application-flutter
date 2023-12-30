import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFromField extends StatelessWidget {
  final bool varEnable;
  final String labelText;
  final Icon iconData;
  TextEditingController? controller;
  final String? Function(String?) valid;
  final bool? obscure;
  final void Function()? showPassword;
  CustomTextFromField({
    super.key,
    this.obscure,
    required this.varEnable,
    this.controller,
    required this.labelText,
    required this.iconData,
    required this.valid,
    this.showPassword,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // focusNode: _focusNode,
      controller: controller,
      enabled: varEnable,

      obscureText: obscure == null || obscure == false ? false : true,
      decoration: InputDecoration(
          errorText: null,
          labelText: labelText,
          prefixIcon: InkWell(
            onTap: showPassword,
            child: iconData,
          ),
          labelStyle: Theme.of(context).textTheme.headlineMedium,
          focusColor: AppColor.backgroundScreen),
      keyboardType: TextInputType.emailAddress,
      validator: valid,

      onSaved: (val) {},

      buildCounter: (BuildContext context,
              {int? currentLength, int? maxLength, bool? isFocused}) =>
          null,
    );
  }
}
