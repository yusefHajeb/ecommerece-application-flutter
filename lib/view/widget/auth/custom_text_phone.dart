import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextphone extends StatelessWidget {
  final bool varEnable;
  TextEditingController? controller;
  CustomTextphone({super.key, required this.varEnable, this.controller});

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
          prefixIcon: Icon(Icons.lock_outline),
          labelStyle: Theme.of(context).textTheme.headline4,
          focusColor: AppColor.backgroundScreen),
      keyboardType: TextInputType.emailAddress,
      validator: (val) => varEnable
          ? val.toString().length <= 0
              ? "Enter your phone please"
              : ""
          : null,
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
