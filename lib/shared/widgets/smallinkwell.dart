import 'package:flutter/material.dart';

import '../../core.dart';

class SmallInkwell extends StatelessWidget {
  final Function() onTap;
  final Icon icon;
  const SmallInkwell({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(getScreenHeight(5)),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: borderColor, width: getScreenHeight(1))),
        child: icon,
      ),
    );
  }
}
