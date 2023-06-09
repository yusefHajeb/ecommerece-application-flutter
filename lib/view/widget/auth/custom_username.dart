import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextFromFiles extends StatelessWidget {
  final bool varEnable;

  final String labeltext;
  final Icon iconData;
  TextEditingController? controller;
  final String? Function(String?) valid;
  final bool? abscure;
  final void Function()? showPassword;
  CustomTextFromFiles(
      {super.key,
      this.abscure,
      required this.varEnable,
      this.controller,
      required this.labeltext,
      required this.iconData,
      required this.valid,
      this.showPassword});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // focusNode: _focusNode,
      controller: controller,
      enabled: varEnable,

      obscureText: abscure == null || abscure == false ? false : true,
      decoration: InputDecoration(
          errorText: null,
          labelText: labeltext,
          prefixIcon: InkWell(
            child: iconData,
            onTap: showPassword,
          ),
          labelStyle: Theme.of(context).textTheme.headline4,
          focusColor: AppColor.backgroundScreen),
      keyboardType: TextInputType.emailAddress,
      validator: valid,

      onSaved: (val) {
        // _utheMap['email'] = val!;
      },

      buildCounter: (BuildContext context,
              {int? currentLength, int? maxLength, bool? isFocused}) =>
          null,
    );
  }
}
