import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CoffeeItemCount extends StatefulWidget {
  const CoffeeItemCount({Key? key}) : super(key: key);

  @override
  State<CoffeeItemCount> createState() => _CoffeeItemCountState();
}

class _CoffeeItemCountState extends State<CoffeeItemCount> {
  int coffeeCount = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: GreyColors.buttonGrey,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size.zero),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 12)),
            ),
            onPressed: () {
              setState(() {
                coffeeCount--;
              });
            },
            child: Image.asset('assets/icons/minus.png')),
        Text(
          '$coffeeCount',
          style: Theme.of(context).textTheme.button,
        ),
        TextButton(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size.zero),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 10, horizontal: 12)),
          ),
          onPressed: () {
            setState(() {
              coffeeCount++;
            });
          },
          child: Image.asset('assets/icons/add_plus.png'),
        ),
      ]),
    );
  }
}
