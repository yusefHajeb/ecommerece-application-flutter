import 'package:flutter/material.dart';

import '../../../controller/productdetailes_controller.dart';
import '../../../core/constant/color.dart';

class CustomSizeProducts extends StatelessWidget {
  const CustomSizeProducts({
    super.key,
    required this.controller,
  });

  final ProductDetailesControllerImp controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, i) {
            return Padding(
              padding: EdgeInsets.only(right: 12),
              child: GestureDetector(
                onTap: () {
                  controller.changeSize(i);
                },
                child: Container(
                  width: 35,
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1.6,
                        color: controller.indexsize == i
                            ? AppColor.secandryColor
                            : AppColor.backgroundScreen),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "4$i",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
