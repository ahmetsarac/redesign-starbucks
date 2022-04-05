import 'package:flutter/material.dart';

import '../theme/colors.dart';

class MoneyCard extends StatelessWidget {
  const MoneyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 142.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: PrimaryColors.mainGreen,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/money_card_bg.png',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 21.0, horizontal: 26.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Toplam Param',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '55,35 TL',
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(color: Colors.white),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextButton.icon(
                          icon: Image.asset('assets/icons/forward.png'),
                          label: Text(
                            'Yükleme Yap',
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
