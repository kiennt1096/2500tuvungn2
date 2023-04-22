import 'package:flutter/material.dart';

import '../../core.dart';

class ButtonwithOutline extends StatelessWidget {
  final String title;
  final Color borderC;
  final Color backgroundC;
  final Color textC;
  final Function() onPress;
  const ButtonwithOutline({
    Key? key,
    required this.title,
    required this.borderC,
    required this.backgroundC,
    required this.onPress,
    required this.textC,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(getScreenHeight(10)))),
          backgroundColor: MaterialStateProperty.all(backgroundC),
          side: MaterialStateProperty.all(BorderSide(
            color: borderC,
            width: getScreenHeight(1),
          ))),
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: getScreenHeight(15), horizontal: getScreenHeight(15)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textC,
              fontSize: getScreenHeight(16),
              fontFamily: fontVNBold,
            ),
          ),
        ),
      ),
    );
  }
}
