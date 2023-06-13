import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonNotification extends StatelessWidget {
  final void Function()? onPressedIcon;
  const CustomButtonNotification({super.key, this.onPressedIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.symmetric(
        vertical: 2,
      ),
      // margin: const EdgeInsets.only(left: 4, right: 4),
      decoration: BoxDecoration(
        color: AppColor.backgroundScreen,
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        color: Colors.white,
        onPressed: onPressedIcon,
        icon: const Icon(Icons.notifications_on_outlined),
      ),
    );
  }
}
