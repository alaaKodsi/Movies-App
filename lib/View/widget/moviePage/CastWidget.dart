import 'package:flutter/material.dart';
import 'package:movies_store/core/constant/imageAssets.dart';

class CastWidget extends StatelessWidget {
  bool _loaded = false;

  String? urlImage;

  CastWidget({required this.urlImage, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 27, bottom: 15),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: SizedBox(
                width: 72,
                height: 72,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(urlImage!),
                  backgroundColor: Colors.white,
                  onBackgroundImageError: (e, i) {
                    IamgeAssets.userCast;
                  },
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
