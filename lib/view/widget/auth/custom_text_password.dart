import 'package:ecommerece/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextFilePassword extends StatelessWidget {
  final TextEditingController passwordContoler;
  final Map<String, String> map;
  const CustomTextFilePassword(
      {super.key, required this.passwordContoler, required this.map});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        //text Security

        obscureText: true,
        decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: Theme.of(context).textTheme.headline4,
            focusColor: AppColor.backgroundScreen),
        keyboardType: TextInputType.emailAddress,
        controller: passwordContoler,
        validator: (val) =>
            (val!.isEmpty || val.length < 5) ? "password is too short " : null,
        onSaved: (val) {
          map['password'] = val!;
        });
  }
}
