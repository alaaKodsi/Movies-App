import 'package:flutter/material.dart';
import 'package:movies_store/core/constant/color.dart';
import 'package:movies_store/core/constant/imageAssets.dart';

class ListtileOfGategory extends StatelessWidget {
  String imageUrl;
  String movieName;
  String yearOfMovie;
  String rate;
  void Function()? onTap;
  ListtileOfGategory(
      {required this.imageUrl,
      required this.movieName,
      required this.yearOfMovie,
      required this.onTap,
      required this.rate,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 9),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(imageUrl),
              ),
              color: AppColor.colorContainerHome,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            height: 96,
            width: 90,
            child: GestureDetector(
              onTap: onTap,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Container(
            decoration: const BoxDecoration(
              color: AppColor.greyTwo,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            height: 96,
            width: 225,
            child: GestureDetector(
              // ignore: sort_child_properties_last
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movieName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      yearOfMovie,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        IamgeAssets.starIcon,
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "$rate/10",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              onTap: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
