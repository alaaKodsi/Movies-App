import 'dart:async';
import 'package:flutter/material.dart';
import 'package:movies_store/View/Screen/LoginPage.dart';
import 'package:movies_store/core/constant/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColor.backgroundColor,

        // width: double.infinity,
        // height: double.infinity,
        child: const Center(
          child: Text(
            "Movies Store",
            style: TextStyle(
                fontSize: 30, color: AppColor.red, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
