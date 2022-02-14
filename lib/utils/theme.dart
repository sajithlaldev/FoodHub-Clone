import 'package:flutter/material.dart';

import 'colors.dart';

class Themes {
  static final BasicTheme = ThemeData(
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: ColorConstants.basicTextColor,
        fontSize: 14,
      ),
    ),
    fontFamily: 'Proxima Nova',
  );
}
