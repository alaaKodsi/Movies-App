import 'package:flutter/material.dart';
import 'package:movies_store/View/widget/moviePage/AddtoWatchlist.dart';
import 'package:movies_store/core/constant/imageAssets.dart';

// ignore: must_be_immutable
class DeteilsMovies extends StatelessWidget {
  String movieName;
  String movieYears;
  String movieRate;
  Function()? onPressed;

  DeteilsMovies(
      {required this.movieName,
      required this.movieRate,
      required this.movieYears,
      this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                movieName,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                movieYears,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 45,
              ),
              SizedBox(
                child: IamgeAssets.starIcon,
                width: 30,
                height: 20,
              ),
              Text(
                "$movieRate/10",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          AddToWatchlist(onPressed: onPressed, textButton: "Add to Watchlist"),
        ],
      ),
    );
  }
}
