import 'package:flutter/material.dart';
import 'package:movies_store/View/widget/gategoryPage.dart/ListtileOfGategory.dart';
import 'package:movies_store/View/widget/gategoryPage.dart/Textbody.dart';
import 'package:movies_store/View/widget/moviePage/searchBar.dart';
import 'package:movies_store/core/constant/color.dart';

import 'package:movies_store/data/model/ListOfMoviesModel.dart';
import 'package:movies_store/service/getAllMovie.dart';

class WatchlistPage extends StatefulWidget {
  WatchlistPage({super.key});

  @override
  State<WatchlistPage> createState() => _WatchlistPage();
}

class _WatchlistPage extends State<WatchlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(37),
        child: Column(
          children: [
            const TextFormFieldSearch(),
            GategoryText(text: "Watchlist"),
          ],
        ),
      ),
    );
  }
}
