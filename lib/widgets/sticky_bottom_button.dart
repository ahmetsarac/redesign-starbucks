import 'package:flutter/material.dart';

import '../theme/colors.dart';

class StickyBottomButton extends StatelessWidget {
  final String text;
  const StickyBottomButton(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 15.0)),
          backgroundColor: MaterialStateProperty.all(PrimaryColors.mainGreen),
        ),
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
