import 'package:flutter/material.dart';

import '../../core.dart';

class OutlinedBtnwithIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final Function() buttonFunction;
  const OutlinedBtnwithIcon({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
    required this.buttonFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(getScreenHeight(20)))),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            side: MaterialStateProperty.all(BorderSide(
              color: color,
              width: getScreenHeight(1),
            ))),
        onPressed: buttonFunction,
        child: Row(children: [
          Icon(
            icon,
            color: color,
          ),
          Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: getScreenHeight(12),
            ),
          )
        ]));
  }
}
