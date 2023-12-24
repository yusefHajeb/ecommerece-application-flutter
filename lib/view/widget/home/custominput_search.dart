import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomInpoutSearch extends StatelessWidget {
  final String title;
  const CustomInpoutSearch({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 45,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            hintText: title,
            hintStyle: Theme.of(context).textTheme.headlineMedium!,
            focusedBorder: InputBorder.none,
            prefixIcon: const Icon(
              Icons.search,
              size: 24,
              color: AppColor.backgroundScreen,
            ),
          ),
        ),
      ),
    );
  }
}
