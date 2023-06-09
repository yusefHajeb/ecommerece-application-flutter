// import 'package:flutter/cupertino.dart';
import 'package:ecommerece/controller/home_controller.dart';
import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  // const CustomButtomNavigationBar({super.key});

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Get.put(HomeContollerImp());
    return GetBuilder<HomeContollerImp>(
      builder: (controller) => Container(
        child: Container(
          margin: EdgeInsets.all(20),
          height: screenWidth * .155,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.15),
                blurRadius: 30,
                offset: Offset(0, 10),
              ),
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            // padding: EdgeInsets.symmetric(horizontal: screenWidth * .00124),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                controller.changePage(index);
                HapticFeedback.lightImpact();
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Stack(
                children: [
                  SizedBox(
                    width: screenWidth * .1725,
                    child: Center(
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        height: index == controller.currentIndex
                            ? screenWidth * .12
                            : 0,
                        width: index == controller.currentIndex
                            ? screenWidth * .1725
                            : 0,
                        decoration: BoxDecoration(
                          color: index == controller.currentIndex
                              ? AppColor.backgroundScreen.withOpacity(0.7)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth * .1725,
                    alignment: Alignment.center,
                    child: Icon(
                      listOfIcons[index],
                      size: screenWidth * .076,
                      color: index == controller.currentIndex
                          ? AppColor.white
                          : Colors.black26,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.category_rounded,
    Icons.favorite_rounded,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];
}
