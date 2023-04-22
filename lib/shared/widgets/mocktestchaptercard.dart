import 'package:flutter/material.dart';

import '../../core.dart';

class MocktestChapterCard extends StatelessWidget {
  final Chapter chapter;
  final Function() onTap;
  const MocktestChapterCard({
    Key? key,
    required this.chapter,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getScreenHeight(16), vertical: getScreenHeight(8)),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(getScreenHeight(8)),
          decoration: BoxDecoration(
              color: backgroundColor,
              border: Border.all(
                color: borderColor,
                width: getScreenHeight(1),
              ),
              borderRadius:
                  BorderRadius.all(Radius.circular(getScreenHeight(10)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  mocktestChapterCardTitle + chapter.number.toString(),
                  style: TextStyle(
                    fontFamily: fontVNBold,
                    fontSize: getScreenHeight(16),
                    color: primaryColor,
                  ),
                ),
                SizedBox(height: getScreenHeight(8)),
                Text(
                  "　${chapter.nameChapterVN}",
                  style: TextStyle(
                    color: textColor,
                    fontSize: getScreenHeight(16),
                    fontFamily: fontVN,
                  ),
                ),
                SizedBox(height: getScreenHeight(8)),
                Text(
                  "　${chapter.nameChapterJP}",
                  style: TextStyle(
                    color: textColor,
                    fontFamily: fontJP,
                    fontSize: getScreenHeight(16),
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              const Icon(
                Icons.arrow_right_sharp,
                color: textColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
