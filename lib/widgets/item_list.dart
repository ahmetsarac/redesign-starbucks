import 'package:flutter/material.dart';

import 'coffee_item.dart';

class Coffee {
  final String name;
  final double price;
  Coffee(this.name, this.price);
}

class ItemList extends StatelessWidget {
  ItemList({Key? key}) : super(key: key);

  final List<Coffee> coffeeList = [
    Coffee('Hazelnut Coffee', 20.0),
    Coffee('Caramel Frappucino', 20.0),
    Coffee('Mocha Frappucino', 20.0),
    Coffee('Espresso Frappucino', 20.0),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 13.0),
      child: SizedBox(
        height: 400,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: coffeeList.length,
          itemBuilder: (context, index) {
            return CoffeeItem(
              coffeeList[index].name,
              coffeeList[index].price,
              index,
            );
          },
        ),
      ),
    );
  }
}
