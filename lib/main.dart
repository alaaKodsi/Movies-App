import 'package:flutter/material.dart';
import 'package:movies_store/View/Screen/LoginPage.dart';
import 'package:movies_store/View/Screen/SplashScreen.dart';
import 'package:movies_store/View/Screen/moviePage.dart';
import 'View/Screen/NavButtonBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Avenir",
      ),
      home: const SplashScreen(),
    );
  }
}
