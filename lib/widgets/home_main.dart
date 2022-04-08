import 'package:flutter/material.dart';

import 'bonus_progress.dart';
import 'money_card.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 31.0, horizontal: 18.0),
      child: Column(
        children: const [
          MoneyCard(),
          SizedBox(height: 27.0),
          BonusProgress(),
        ],
      ),
    );
  }
}
