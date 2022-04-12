import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CoffeeItemCheckButton extends StatefulWidget {
  const CoffeeItemCheckButton({Key? key}) : super(key: key);

  @override
  State<CoffeeItemCheckButton> createState() => _CoffeeItemCheckButtonState();
}

class _CoffeeItemCheckButtonState extends State<CoffeeItemCheckButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        minimumSize: MaterialStateProperty.all(
          Size.zero,
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(12.0),
        ),
        backgroundColor: MaterialStateProperty.all(
          PrimaryColors.mainGreen,
        ),
      ),
      onPressed: () {},
      child: Image.asset('assets/icons/check.png'),
    );
  }
}
