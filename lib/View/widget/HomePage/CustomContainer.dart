import 'package:flutter/material.dart';
import 'package:movies_store/core/constant/color.dart';

class CustomContainer extends StatelessWidget {
  String text;
  void Function()? onTap;
  CustomContainer({required this.text, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColor.colorContainerHome,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        height: 120,
        width: 160,
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
              color: AppColor.red, fontSize: 14, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
