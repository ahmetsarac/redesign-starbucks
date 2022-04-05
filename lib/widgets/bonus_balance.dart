import 'package:flutter/material.dart';
import 'package:redesign_starbucks/theme/colors.dart';

class BonusBalance extends StatelessWidget {
  const BonusBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/yellow_star.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '0',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontFamily: 'SF Pro', fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Text('Yıldız bakiyesi',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: GreyColors.dark)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/small_cup.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '0',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontFamily: 'SF Pro', fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Text(
                  'İkram içecek',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: GreyColors.dark),
                ),
              ],
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(GreyColors.buttonGrey),
            ),
            onPressed: () {},
            child: Text('Detaylar',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: GreyColors.darkGrey)),
          ),
        )
      ],
    );
  }
}
