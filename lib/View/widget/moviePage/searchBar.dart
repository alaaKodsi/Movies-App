import 'package:flutter/material.dart';
import 'package:movies_store/core/constant/color.dart';
import 'package:movies_store/core/constant/constantText.dart';
import 'package:movies_store/core/constant/imageAssets.dart';

class TextFormFieldSearch extends StatelessWidget {
  const TextFormFieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(28)),
              borderSide: BorderSide(color: AppColor.textFormFieldBorder)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(28)),
              borderSide: BorderSide(color: AppColor.textFormFieldBorder)),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.textFormFieldBorder),
            borderRadius: BorderRadius.all(Radius.circular(28)),
          ),
          hintText: "Search",
          hintStyle: const TextStyle(
              color: AppColor.colorIcon, fontFamily: "Urbanist"),
          prefixIcon: IconButton(
              icon: IamgeAssets.searchicon,
              color: AppColor.colorIcon,
              onPressed: () {}),
        ),
      ),
    );
  }
}
