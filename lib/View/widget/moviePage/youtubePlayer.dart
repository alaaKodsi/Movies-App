import 'package:flutter/material.dart';
import 'package:movies_store/core/constant/color.dart';

class YoutubePlayer extends StatelessWidget {
  const YoutubePlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 23),
      child: Container(
        decoration: const BoxDecoration(
          color: AppColor.greyTwo,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        height: 162,
        width: 350,
        child: GestureDetector(
          // ignore: sort_child_properties_last
          child: Padding(
            padding: const EdgeInsets.only(top: 23, left: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
