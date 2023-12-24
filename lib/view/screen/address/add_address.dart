import 'package:flutter/material.dart';

class AddAdressScreen extends StatelessWidget {
  const AddAdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Address"),
        ),
        body: const Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 400,
            )
          ],
        ));
  }
}
