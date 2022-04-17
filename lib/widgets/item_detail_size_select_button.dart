import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../utils/enums.dart';

class ItemDetailSizeSelectButton extends StatelessWidget {
  final String imageUrl;
  final VoidCallback selectFunction;
  final CoffeeSize selectedSize;
  final CoffeeSize size;
  const ItemDetailSizeSelectButton(
      this.imageUrl, this.selectedSize, this.size, this.selectFunction,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(
                color: selectedSize == size
                    ? PrimaryColors.darkGreen
                    : GreyColors.buttonGrey),
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        minimumSize: MaterialStateProperty.all(const Size(40, 40)),
        backgroundColor: MaterialStateProperty.all(selectedSize == size
            ? PrimaryColors.darkGreen.withOpacity(0.3)
            : GreyColors.softGrey),
        elevation: MaterialStateProperty.all(0),
      ),
      child: Image.asset(imageUrl),
      onPressed: selectFunction,
    );
  }
}
