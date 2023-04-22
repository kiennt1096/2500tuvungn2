import 'package:flutter/material.dart';

import '../../core.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    this.title,
    this.text,
    this.color,
    required this.fontFamily,
  }) : super(key: key);
  final String? title;
  final String? text;
  final Color? color;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title!,
          style: TextStyle(color: textColor, fontSize: getScreenHeight(14)),
        ),
        Expanded(
          child: Text(
            text!,
            style: TextStyle(
                color: color,
                fontFamily: fontFamily,
                fontSize: getScreenHeight(14)),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
