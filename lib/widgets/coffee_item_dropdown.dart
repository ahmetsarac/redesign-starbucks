import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CoffeeItemDropdown extends StatefulWidget {
  const CoffeeItemDropdown({Key? key}) : super(key: key);

  @override
  State<CoffeeItemDropdown> createState() => _CoffeeItemDropdownState();
}

class _CoffeeItemDropdownState extends State<CoffeeItemDropdown> {
  final List<String> sizes = [
    'Tall',
    'Grande',
    'Venti',
  ];

  late String selectedSize = sizes[0];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: GreyColors.buttonGrey,
        borderRadius: BorderRadius.circular(4.0),
      ),
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 12.0,
        top: 4.0,
        bottom: 4.0,
      ),
      child: DropdownButton(
          icon: Image.asset('assets/icons/dropdown.png'),
          dropdownColor: GreyColors.buttonGrey,
          underline: const SizedBox(),
          isDense: true,
          value: selectedSize,
          items: sizes.map((String items) {
            return DropdownMenuItem(
              child: Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Text(
                  items,
                  style: Theme.of(context).textTheme.button,
                ),
              ),
              value: items,
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              selectedSize = value!;
            });
          }),
    );
  }
}
