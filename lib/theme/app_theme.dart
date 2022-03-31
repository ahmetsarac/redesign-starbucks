import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  static final appTheme = ThemeData(
    textTheme: textTheme,
    inputDecorationTheme: inputTheme,
  );

  static const textTheme = TextTheme(
    headlineLarge: TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
      fontSize: 30.0,
      color: GreyColors.dark,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
      color: GreyColors.darkGrey,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      fontSize: 14.0,
      color: GreyColors.inputLightGrey,
    ),
  );

  static final inputTheme = InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: GreyColors.inputLightGrey,
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: GreyColors.dark,
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5.0),
    ),
    filled: true,
    hintStyle: textTheme.headlineSmall,
    fillColor: Colors.white,
    constraints: const BoxConstraints(maxHeight: 50),
  );

  static final primaryButtonStyle = ButtonStyle(
    textStyle: MaterialStateProperty.all(textTheme.headlineSmall),
    backgroundColor: MaterialStateProperty.all(
      PrimaryColors.mainGreen,
    ),
    minimumSize: MaterialStateProperty.all(
      const Size(double.infinity, 50),
    ),
  );
}
