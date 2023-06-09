import 'package:ecommerece/core/constant/color.dart';
import 'package:ecommerece/core/constant/imageassets.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // scrollDirection: Axis.vertical,
      // physics: ScrollPhysics(parent: ),
      children: [
        Container(
          child: Text(
            "Cart",
            textAlign: TextAlign.center,
          ),
        ),
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Image.asset(ImageAssets.onBordingOne),
                flex: 4,
              ),

              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "name product",
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(fontSize: 12),
                        ),
                      ),
                      Text(
                        "shose",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        "\$120",
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.red[200]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
              Expanded(
                flex: 3,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: AppColor.backgroundScreen,
                          )),
                      Text(
                        "3",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove,
                            color: AppColor.backgroundScreen,
                          )),
                    ]),
              ),
              // subtitle: Text("\$233.00"),
            ],
          ),
        ),
      ],
    );
  }
}
