import 'package:flutter/material.dart';
import 'package:movies_store/core/constant/color.dart';
import 'package:movies_store/core/constant/constantText.dart';

class TextFormFieldLogin extends StatelessWidget {
  TextEditingController textEditingController;

  String? hintText;
  String? onSave;

  Widget iconField;
  TextInputType? textInputType;
  TextInputAction? textInputAction;
  bool? obscureTextStatus;
  void Function()? onPressedIcon;
  String? Function(String?)? validator;
  TextFormFieldLogin(
      {required this.onSave,
      required this.onPressedIcon,
      required this.iconField,
      required this.textInputType,
      required this.hintText,
      required this.textInputAction,
      required this.textEditingController,
      this.obscureTextStatus,
      this.validator,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: textEditingController,
        onSaved: (val) {
          onSave = val;
        },
        validator: validator,
        keyboardType: textInputType,
        obscureText: obscureTextStatus!,
        textInputAction: textInputAction,
        style: const TextStyle(color: Colors.white),

        // ignore: prefer_const_constructors
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: AppColor.textFormFieldBorder)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: AppColor.textFormFieldBorder)),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.textFormFieldBorder),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
              color: AppColor.colorIcon,
              fontFamily: "Urbanist",
              fontWeight: FontWeight.w500),
          suffixIcon: IconButton(
            icon: iconField,
            color: AppColor.colorIcon,
            onPressed: onPressedIcon,
          ),
        ),
      ),
    );
  }
}
