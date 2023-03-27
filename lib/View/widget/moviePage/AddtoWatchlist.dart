import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

// ignore: must_be_immutable
class AddToWatchlist extends StatelessWidget {
  String textButton;
  void Function()? onPressed;
  AddToWatchlist(
      {required this.onPressed, required this.textButton, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(147, 33),
            backgroundColor: AppColor.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            )),
        child: Text(textButton,
            style: const TextStyle(
                fontSize: 12,
                fontFamily: "Urbanist",
                fontWeight: FontWeight.w600)),
      ),
    );
  }
}
