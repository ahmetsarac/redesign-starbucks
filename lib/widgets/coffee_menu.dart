import 'package:flutter/material.dart';
import 'package:redesign_starbucks/theme/colors.dart';

import 'category_menu.dart';
import 'item_list.dart';

class CoffeeMenu extends StatelessWidget {
  const CoffeeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 13.0),
            child: Text(
              'Menu',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: GreyColors.dark,
                  ),
            ),
          ),
          const CategoryMenu(),
          const SizedBox(height: 20.0),
          ItemList(),
        ],
      ),
    );
  }
}
