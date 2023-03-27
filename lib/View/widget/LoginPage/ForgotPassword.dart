import 'package:flutter/material.dart';
import 'package:movies_store/core/constant/color.dart';

class ForgotPassword extends StatelessWidget {
  void Function()? onTap;
  ForgotPassword({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          child: const Text(
            "Forgot Password?",
            style: TextStyle(color: AppColor.greyOne),
          ),
          onTap: onTap,
        ),
      ],
    );
  }
}
