import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomButtonLaung extends StatelessWidget {
  final String textButton;
  final void Function()? onPraseButton;
  const CustomButtonLaung({
    super.key,
    required this.textButton,
    required this.onPraseButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 250,
      decoration: const BoxDecoration(
        color: AppColor.backgroundScreen,
      ),
      child: MaterialButton(
        height: 46,
        onPressed: onPraseButton,
        textColor: AppColor.white,
        child: Text(textButton),
      ),
    );
  }
}
