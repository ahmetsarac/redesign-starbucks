import 'package:flutter/material.dart';
import 'package:redesign_starbucks/widgets/credit_card_payment.dart';

import '../theme/colors.dart';
import '../widgets/coffee_item.dart';
import '../widgets/main_app_bar.dart';
import '../widgets/money_card_payment.dart';
import '../widgets/sticky_bottom_button.dart';
import '../widgets/time_picker.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: GreyColors.backgroundGrey,
        appBar: const MainAppBar(
          'Sipariş Detayı',
          leadingIcon: true,
        ),
        bottomNavigationBar: const StickyBottomButton(),
        extendBody: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 19,
                ),
                const TimePicker(),
                const SizedBox(height: 7),
                Container(
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, bottom: 13.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sipariş Listesi',
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: GreyColors.dark,
                                    ),
                          ),
                          TextButton(
                              child: Text('Add More',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          color: PrimaryColors.darkGreen,
                                          fontFamily: 'SF Pro')),
                              onPressed: () {}),
                        ],
                      ),
                      const CoffeeItem('Espresso', 20.0, 0),
                      const Divider(
                        thickness: 1,
                        color: GreyColors.buttonGrey,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(color: GreyColors.dark),
                            ),
                            Text(
                              '20.00 TL',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(color: GreyColors.dark),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 7),
                Container(
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, bottom: 13.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ödeme Şekli',
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: GreyColors.dark,
                                    ),
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextButton.icon(
                              icon:
                                  Image.asset('assets/icons/forward_green.png'),
                              label: Text(
                                'Yükleme Yap',
                                style: Theme.of(context)
                                    .textTheme
                                    .button!
                                    .copyWith(color: PrimaryColors.darkGreen),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Flexible(
                            flex: 1,
                            child: MoneyCardPayment(),
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            flex: 1,
                            child: CreditCardPayment(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
