import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core.dart';

class CircleButton50 extends StatelessWidget {
  final Color borderColor;
  final String icon;
  final Color iconColor;
  final Color backgroundColor;
  final Function() function;
  const CircleButton50({
    Key? key,
    required this.borderColor,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(50),
      width: getScreenHeight(50),
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(getScreenHeight(40)),
              ),
              side: BorderSide(color: borderColor, width: getScreenHeight(1))),
        ),
        child: SvgPicture.asset(icon, color: iconColor),
      ),
    );
  }
}
