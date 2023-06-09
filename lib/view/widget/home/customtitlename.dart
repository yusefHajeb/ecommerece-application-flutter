import 'package:flutter/material.dart';

class CustomTexttile extends StatelessWidget {
  final String title;
  final TextStyle style;
  const CustomTexttile({super.key, required this.title, required this.style});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 14.0, left: 14.0, bottom: 5, top: 2),
          child: Text(
            title,
            style: style,
          ),
        ),
      ],
    );
  }
}
