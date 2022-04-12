import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CoffeeItemAddButton extends StatefulWidget {
  final VoidCallback addItem;
  const CoffeeItemAddButton(this.addItem, {Key? key}) : super(key: key);

  @override
  State<CoffeeItemAddButton> createState() => _CoffeeItemAddButtonState();
}

class _CoffeeItemAddButtonState extends State<CoffeeItemAddButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          PrimaryColors.mainGreen,
        ),
      ),
      onPressed: widget.addItem,
      child: Text(
        'Ekle',
        style:
            Theme.of(context).textTheme.button!.copyWith(color: Colors.white),
      ),
    );
  }
}
