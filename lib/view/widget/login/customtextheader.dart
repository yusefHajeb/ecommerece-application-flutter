import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextHeader extends StatelessWidget {
  final String text;
  const CustomTextHeader({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text.tr,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
