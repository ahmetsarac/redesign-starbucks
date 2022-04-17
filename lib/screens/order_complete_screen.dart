import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../widgets/main_app_bar.dart';
import '../widgets/sticky_bottom_button.dart';

class OrderCompleteScreen extends StatelessWidget {
  const OrderCompleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GreyColors.backgroundGrey,
      appBar: const MainAppBar(
        'Sipariş Tamamlandı',
      ),
      bottomNavigationBar: const StickyBottomButton('Kapat'),
      extendBody: true,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 56.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Image.asset('assets/icons/success.png'),
                  ),
                  Text(
                    'Bizden sipariş verdiğiniz için teşekkürler!',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: GreyColors.dark),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15.0, bottom: 30.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: GreyColors.buttonGrey,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tebrikler',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: GreyColors.dark),
                          ),
                          Container(
                            padding: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: PrimaryColors.darkGreen,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '+2',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Image.asset('assets/icons/yellow_star.png'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            child: Image.asset('assets/images/coffee.png'),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bizden 2 puan kazandın',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: GreyColors.dark),
                              ),
                              Text('Hazelnut Coffee',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(color: GreyColors.dark)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  decoration: BoxDecoration(
                    color: GreyColors.buttonGrey,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Best sellers to best sellers increased',
                        style: Theme.of(context)
                            .textTheme
                            .overline!
                            .copyWith(color: GreyColors.dark),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const LinearProgressIndicator(
                                minHeight: 7,
                                backgroundColor: GreyColors.softGrey,
                                color: PrimaryColors.darkGreen,
                                value: 0.3,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Image.asset('assets/icons/green_star.png'),
                                const SizedBox(width: 5),
                                Text('7/10',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                            fontSize: 24,
                                            fontWeight: FontWeight.normal,
                                            color: PrimaryColors.darkGreen)),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
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
