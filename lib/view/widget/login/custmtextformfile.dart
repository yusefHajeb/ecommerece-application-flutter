import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFromFile extends StatelessWidget {
  final String label;
  final String hint;
  final Icon sufixIcon;
  final String? Function(String?) valid;
  TextEditingController? myController;
  CustomTextFromFile(
      {Key? key,
      required this.label,
      required this.hint,
      required this.sufixIcon,
      this.myController,
      required this.valid})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 2, bottom: 20),
      child: TextFormField(
        controller: myController,
        validator: valid,
        decoration: InputDecoration(
            label: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 12),
                child: Text(label.tr)),
            hintText: hint,
            helperStyle:
                const TextStyle(fontSize: 8, color: AppColor.backgroundScreen),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30),
            suffixIcon: sufixIcon,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
