import 'package:flutter/material.dart';
import 'package:movies_store/core/constant/color.dart';

class CoverMovie extends StatelessWidget {
  void Function()? onTap;
  String imageUrl;
  CoverMovie({required this.imageUrl, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: Container(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.fill),
          color: AppColor.colorContainerHome,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        height: 126,
        width: 108,
        child: GestureDetector(
          onTap: onTap,
        ),
      ),
    );
  }
}
