import 'package:flutter/material.dart';

import '../../core.dart';

class ChapterCard extends StatelessWidget {
  final Chapter chapter;
  const ChapterCard({
    Key? key,
    required this.chapter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          //color: elipseColor,
          padding: EdgeInsets.all(getScreenHeight(30)),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: elipseColor,
          ),
          child: Center(
              child: Text(
            chapter.number.toString(),
            style: TextStyle(
              color: backgroundColor,
              fontSize: getScreenHeight(30),
              fontFamily: fontVNBold,
            ),
          )),
        ),
        SizedBox(width: getScreenWidth(16)),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              chapter.nameChapterVN,
              style: TextStyle(
                color: textColor,
                fontSize: getScreenHeight(16),
                fontFamily: fontVNBold,
              ),
            ),
            SizedBox(height: getScreenHeight(8)),
            Text(
              chapter.nameChapterJP,
              style: TextStyle(
                color: textColor,
                fontFamily: fontJP,
                fontSize: getScreenHeight(16),
                //fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
