import 'package:flutter/material.dart';

import '../theme/colors.dart';
import 'coffee_item_add_button.dart';
import 'coffee_item_check_button.dart';
import 'coffee_item_count.dart';
import 'coffee_item_dropdown.dart';

class CoffeeItem extends StatefulWidget {
  final String name;
  final double price;
  final int index;
  const CoffeeItem(this.name, this.price, this.index, {Key? key})
      : super(key: key);

  @override
  State<CoffeeItem> createState() => _CoffeeItemState();
}

class _CoffeeItemState extends State<CoffeeItem> {
  void addItem() {
    setState(() {
      addingStatus = true;
      selectedIndex = widget.index;
    });
  }

  bool addingStatus = false;

  int? selectedIndex;
  int coffeeCount = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 43,
            child: Image.asset('assets/images/coffee.png'),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name, style: Theme.of(context).textTheme.headline3),
                const SizedBox(height: 8.0),
                Text('${widget.price.toStringAsFixed(0)} TL',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: GreyColors.dark)),
                Row(
                  mainAxisAlignment:
                      addingStatus && selectedIndex == widget.index
                          ? MainAxisAlignment.spaceBetween
                          : MainAxisAlignment.end,
                  children: [
                    if (addingStatus && selectedIndex == widget.index)
                      const CoffeeItemCount(),
                    if (addingStatus && selectedIndex == widget.index)
                      const CoffeeItemDropdown(),
                    if (addingStatus && selectedIndex == widget.index)
                      const CoffeeItemCheckButton(),
                    if (selectedIndex != widget.index)
                      CoffeeItemAddButton(addItem),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
