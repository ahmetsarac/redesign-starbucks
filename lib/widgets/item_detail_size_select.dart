import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../utils/enums.dart';
import 'item_detail_size_select_button.dart';

class ItemDetailSizeSelect extends StatefulWidget {
  const ItemDetailSizeSelect({Key? key}) : super(key: key);

  @override
  State<ItemDetailSizeSelect> createState() => _ItemDetailSizeSelectState();
}

class _ItemDetailSizeSelectState extends State<ItemDetailSizeSelect> {
  CoffeeSize selectedSize = CoffeeSize.tall;
  void setTall() {
    setState(() {
      selectedSize = CoffeeSize.tall;
    });
  }

  void setGrande() {
    setState(() {
      selectedSize = CoffeeSize.grande;
    });
  }

  void setVenti() {
    setState(() {
      selectedSize = CoffeeSize.venti;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: 2,
          child: ItemDetailSizeSelectButton(
              'assets/icons/tall.png', selectedSize, CoffeeSize.tall, setTall),
        ),
        Flexible(
          flex: 2,
          child: ItemDetailSizeSelectButton('assets/icons/grande.png',
              selectedSize, CoffeeSize.grande, setGrande),
        ),
        Flexible(
          flex: 2,
          child: ItemDetailSizeSelectButton('assets/icons/venti.png',
              selectedSize, CoffeeSize.venti, setVenti),
        ),
      ],
    );
  }
}
