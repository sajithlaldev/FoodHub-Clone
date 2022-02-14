import 'package:flutter/material.dart';

import 'colors.dart';

class Themes {
  static final BasicTheme = ThemeData(
    textTheme: const TextTheme(
        bodyMedium: TextStyle(
          color: ColorConstants.basicTextColor,
          fontSize: 15,
        ),
        bodySmall: TextStyle(
          color: ColorConstants.basicTextColor,
          fontSize: 13,
        ),
        bodyLarge: TextStyle(
          color: ColorConstants.basicTextColor,
          fontSize: 19,
        )),
    fontFamily: 'Proxima Nova',
  );
}
