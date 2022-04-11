import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  static final appTheme = ThemeData(
    primaryColor: PrimaryColors.mainGreen,
    textTheme: textTheme,
    inputDecorationTheme: inputTheme,
  );

  static const textTheme = TextTheme(
    headline1: TextStyle(
      fontFamily: 'Inter',
      fontSize: 30.0,
      fontWeight: FontWeight.w700,
      color: GreyColors.dark,
    ),
    headline2: TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      fontSize: 20.0,
      color: PrimaryColors.darkGreen,
    ),
    headline3: TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
      fontSize: 18.0,
      color: GreyColors.dark,
    ),
    headline4: TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
      color: PrimaryColors.darkGreen,
    ),
    headline5: TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
      color: Colors.white,
    ),
    headline6: TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      fontSize: 14.0,
      color: GreyColors.lightGrey,
    ),
    bodyText1: TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
      color: GreyColors.darkGrey,
    ),
    caption: TextStyle(
      fontFamily: 'SF Pro',
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
      color: GreyColors.dark,
    ),
    overline: TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
      color: GreyColors.grey,
      letterSpacing: 0,
    ),
    button: TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      fontSize: 14.0,
      color: GreyColors.darkGrey,
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
    hintStyle: textTheme.headline6,
    fillColor: Colors.white,
    constraints: const BoxConstraints(maxHeight: 50),
  );

  static final primaryButtonStyle = ButtonStyle(
    textStyle: MaterialStateProperty.all(
      textTheme.button!.copyWith(color: Colors.white),
    ),
    backgroundColor: MaterialStateProperty.all(
      PrimaryColors.mainGreen,
    ),
    minimumSize: MaterialStateProperty.all(
      const Size(double.infinity, 50),
    ),
  );
}
