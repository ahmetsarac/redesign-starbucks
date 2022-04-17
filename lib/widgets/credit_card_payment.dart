import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CreditCardPayment extends StatelessWidget {
  const CreditCardPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 18, right: 18.0, top: 18.0),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: GreyColors.buttonGrey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Kredi\nBanka Karti',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: GreyColors.dark.withOpacity(0.5))),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  right: 20,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white.withOpacity(0.3),
                  ),
                ),
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: GreyColors.inputLightGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
