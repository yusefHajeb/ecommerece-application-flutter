import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class AddAdressScreen extends StatelessWidget {
  const AddAdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Address"),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
            )
          ],
        ));
  }
}
