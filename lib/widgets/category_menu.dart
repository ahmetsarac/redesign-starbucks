import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CategoryMenu extends StatefulWidget {
  const CategoryMenu({Key? key}) : super(key: key);

  @override
  State<CategoryMenu> createState() => _CategoryMenuState();
}

class _CategoryMenuState extends State<CategoryMenu> {
  final List<String> menuList = [
    'Çok Satanlar',
    'Yiyecek',
    'Yeniler',
    'Kahveler'
  ];

  int selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: menuList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 8, left: index == 0 ? 24.0 : 0.0),
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    side: const BorderSide(color: GreyColors.buttonGrey),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  selectedButtonIndex == index
                      ? GreyColors.buttonGrey
                      : Colors.white,
                ),
              ),
              child: Text(
                menuList[index],
                style: Theme.of(context)
                    .textTheme
                    .button!
                    .copyWith(color: GreyColors.dark),
              ),
              onPressed: () {
                setState(() {
                  selectedButtonIndex = index;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
