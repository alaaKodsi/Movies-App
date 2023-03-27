import 'package:flutter/material.dart';
import 'package:movies_store/core/constant/color.dart';

class TextBodyLoginTwo extends StatelessWidget {
  const TextBodyLoginTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Text(
          "Login to continue",
          style: TextStyle(
              color: AppColor.greyOne,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
