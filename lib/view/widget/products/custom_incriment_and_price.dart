import 'package:flutter/material.dart';

import '../../../controller/productdetailes_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/models/items_model.dart';

class CustomIncrimentAndPrice extends StatelessWidget {
  const CustomIncrimentAndPrice({
    super.key,
    required this.data,
    required this.controller,
  });

  final ItemsModel data;
  final ProductDetailsControllerImp controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "\$" + data.itemPrice!,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          // width: Get.width / 3,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              Container(
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                    color: AppColor.secandryColor,
                    borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                    onPressed: () {
                      controller.icrementToBasket();
                    },
                    icon: Icon(
                      Icons.add,
                      size: 18,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${controller.incrementOrDecrease}"),
              ),
              Container(
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                    color: AppColor.backgroundScreen,
                    borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                    onPressed: () {
                      controller.describesBasket();
                    },
                    icon: Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 18,
                    )),
              ),
            ],
          ),
        )
      ],
    );
  }
}
