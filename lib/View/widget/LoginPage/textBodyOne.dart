import 'package:flutter/material.dart';
import 'package:movies_store/core/constant/color.dart';

class TextBodyLoginOne extends StatelessWidget {
  const TextBodyLoginOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Text(
          "Welcome ",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
