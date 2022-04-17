import 'package:flutter/material.dart';
import 'package:redesign_starbucks/widgets/item_detail_size_select.dart';

import '../theme/colors.dart';
import '../widgets/coffee_item_count.dart';
import '../widgets/main_app_bar.dart';

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GreyColors.backgroundGrey,
      appBar: const MainAppBar(
        'Ürün Detayı',
        leadingIcon: true,
      ),
      extendBody: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 24.0),
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 100,
                      child: Image.asset(
                        'assets/images/coffee.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Toffee Nut Frappucino',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Toffee nut syrup is blended with ice and milk, then topped with whipped cream and a delicious toffee nut flavoured topping.',
                      style: Theme.of(context)
                          .textTheme
                          .overline!
                          .copyWith(height: 1.5)),
                ],
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '24.50 TL',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(flex: 4, child: CoffeeItemCount()),
                    Flexible(flex: 6, child: ItemDetailSizeSelect()),
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 40)),
                    elevation: MaterialStateProperty.all(0),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 15.0)),
                    backgroundColor:
                        MaterialStateProperty.all(PrimaryColors.mainGreen),
                  ),
                  onPressed: () {},
                  child: const Text('Satın Al'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
