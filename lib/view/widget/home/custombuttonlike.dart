import 'package:ecommerece/controller/home_controller.dart';
import 'package:ecommerece/view/screen/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonLike extends StatelessWidget {
  @override
  bool isPressed = true;
  bool isPressed2 = true;
  bool isHighlighted = true;

  @override
  Widget build(BuildContext context) {
    Get.put(HomeContollerImp());
    return GetBuilder<HomeContollerImp>(
      builder: (controller) => Container(
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onHighlightChanged: (value) {
            // setState(() {
            //   isHighlighted = !isHighlighted;
            // });
          },
          onTap: () {
            controller.clickOnButtonlick();
          },
          child: AnimatedContainer(
            margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
            height: isHighlighted ? 50 : 45,
            width: isHighlighted ? 50 : 45,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(milliseconds: 300),
            child: controller.isPressed
                ? Icon(
                    Icons.favorite_border,
                    color: Colors.black.withOpacity(0.6),
                  )
                : Icon(
                    Icons.favorite,
                    color: Colors.pink.withOpacity(1.0),
                  ),
          ),
        ),
      ),
    );
  }
}
