import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class ElevatedButtonLogin extends StatelessWidget {
  String textButton;
  void Function()? onPressed;
  ElevatedButtonLogin(
      {required this.onPressed, required this.textButton, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(331, 56),
            backgroundColor: AppColor.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
        child: Text(textButton,
            style: const TextStyle(
                fontSize: 20,
                fontFamily: "Urbanist",
                fontWeight: FontWeight.w600)),
      ),
    );
  }
}
