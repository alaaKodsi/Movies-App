import 'package:flutter/material.dart';
import 'package:movies_store/View/Screen/Home.dart';
import 'package:movies_store/View/Screen/WatchlistPage.dart';

import 'package:movies_store/core/constant/color.dart';
import 'package:movies_store/core/constant/imageAssets.dart';
import 'package:movies_store/data/model/MoviesCategoriesModel.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

late Future<MoviesCategoriesModel> futureCategories;

class _HomePageState extends State<HomePage> {
  Widget screen = Home();
  int index = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0,
          title: const Text(
            'Movies Store',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: IamgeAssets.notificationIcon)
          ],
        ),
        body: screen,
        bottomNavigationBar: Container(
          height: 80,
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black45,
                blurRadius: 10,
              ),
            ],
          ),
          child: BottomNavigationBar(
              backgroundColor: AppColor.backgroundColor,
              currentIndex: index,
              elevation: 20,
              iconSize: 20,
              onTap: (value) {
                index = value;
                if (value == 0) {
                  setState(() => screen = Home());
                } else if (value == 1) {
                  setState(() => screen = WatchlistPage());
                }
              },
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  label: "",
                  icon: IamgeAssets.homeOneIcon,
                  activeIcon: IamgeAssets.homeTwoIcon,
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: IamgeAssets.desktopTwoIcon,
                  activeIcon: IamgeAssets.desktopOneIcon,
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: IamgeAssets.userIcon,
                  activeIcon: IamgeAssets.userIcon,
                ),
              ]),
        ));
  }
}
