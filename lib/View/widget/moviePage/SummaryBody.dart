import 'package:flutter/material.dart';
import 'package:movies_store/core/constant/color.dart';

class SummeryBody extends StatelessWidget {
  String textbody;
  String directorName;
  String writers;
  SummeryBody(
      {required this.writers,
      required this.textbody,
      required this.directorName,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 11,
        ),
        child: Column(
          children: [
            Container(
              width: 335,
              height: 96,
              child: Text(
                textbody,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 7, left: 27),
                  child: Text(
                    "Director: $directorName",
                    style: const TextStyle(
                        color: AppColor.greyOne,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27, bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Writers: $writers",
                    style: const TextStyle(
                        color: AppColor.greyOne,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
