import 'package:flutter/material.dart';

import '../theme/colors.dart';

class MoneyCardPayment extends StatelessWidget {
  const MoneyCardPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18.0),
      height: 100,
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(
            'assets/images/money_card_bg.png',
          ),
        ),
        borderRadius: BorderRadius.circular(20.0),
        color: PrimaryColors.mainGreen,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Toplam Param', style: Theme.of(context).textTheme.headline5),
          Text(
            '55.35 TL',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
