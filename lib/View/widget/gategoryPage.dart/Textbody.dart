import 'package:flutter/material.dart';
import 'package:movies_store/core/constant/color.dart';

class GategoryText extends StatelessWidget {
  String text;
  GategoryText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 37, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: AppColor.redTwo),
          )
        ],
      ),
    );
  }
}
