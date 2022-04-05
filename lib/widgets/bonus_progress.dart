import 'package:flutter/material.dart';

import 'bonus_balance.dart';
import 'radial_cup_gauge.dart';

class BonusProgress extends StatelessWidget {
  const BonusProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.0,
      child: Align(
        alignment: Alignment.center,
        child: Row(
          children: const [
            Flexible(
              flex: 5,
              child: RadialCupGauge(6, 15),
            ),
            Flexible(flex: 7, child: BonusBalance()),
          ],
        ),
      ),
    );
  }
}
