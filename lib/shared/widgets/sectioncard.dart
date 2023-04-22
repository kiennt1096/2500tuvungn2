import 'package:flutter/material.dart';

import '../../core.dart';

class SectionCard extends StatelessWidget {
  final Function()? function;
  final Section? section;
  const SectionCard({
    Key? key,
    this.section,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getScreenHeight(16)),
      child: Column(
        children: [
          Container(
            height: getScreenHeight(1),
            width: double.infinity,
            color: borderColor,
          ),
          TextButton(
            onPressed: function,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          section!.nameSectionVN.toString(),
                          style: TextStyle(
                            fontSize: getScreenHeight(12),
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: getScreenHeight(5)),
                        Text(
                          section!.nameSectionJP.toString(),
                          style: TextStyle(
                            fontSize: getScreenHeight(12),
                            color: textColor,
                            fontFamily: fontJP,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_right_sharp,
                  color: textColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
