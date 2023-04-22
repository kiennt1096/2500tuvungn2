import 'package:flutter/material.dart';

import '../../core.dart';

class SmallInkwellTangoCard extends StatelessWidget {
  final Function onTap;
  final Icon icon;
  final Color color;
  const SmallInkwellTangoCard({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.all(getScreenHeight(5)),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: color, width: getScreenHeight(1))),
        child: icon,
      ),
    );
  }
}
