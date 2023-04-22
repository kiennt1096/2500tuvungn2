import 'package:flutter/material.dart';

import '../core.dart';

PreferredSizeWidget myAppbar(String title) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(
        color: primaryColor,
        fontFamily: fontVNBold,
      ),
    ),
    backgroundColor: backgroundColor,
    iconTheme: const IconThemeData(color: textColor),
    shadowColor: backgroundColor,
  );
}
