import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonOK extends StatelessWidget {
  final void Function()? submit;
  final String text;

  const CustomButtonOK({super.key, this.submit, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      // focusNode: _focusNode,
      // minWidth: 100,

      onPressed: () {
        return submit!();
      },
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      color: AppColor.backgroundScreen,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),

      child: Text(
        text,
        style: TextStyle(color: AppColor.white),
      ),
    );
  }
}
