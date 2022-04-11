import 'package:flutter/material.dart';
import 'package:redesign_starbucks/theme/colors.dart';

class CoffeeMenu extends StatefulWidget {
  const CoffeeMenu({Key? key}) : super(key: key);

  @override
  State<CoffeeMenu> createState() => _CoffeeMenuState();
}

class Coffee {
  final String name;
  final double price;
  Coffee(this.name, this.price);
}

class _CoffeeMenuState extends State<CoffeeMenu> {
  bool addingStatus = false;

  final List<String> menuList = [
    'Çok Satanlar',
    'Yiyecek',
    'Yeniler',
    'Kahveler'
  ];

  final List<String> sizes = [
    'Tall',
    'Grande',
    'Venti',
  ];

  late String selectedSize = sizes[0];
  int? selectedIndex;
  int selectedButtonIndex = 0;
  int coffeeCount = 1;

  final List<Coffee> coffeeList = [
    Coffee('Hazelnut Coffee', 20.0),
    Coffee('Caramel Frappucino', 20.0),
    Coffee('Mocha Frappucino', 20.0),
    Coffee('Espresso Frappucino', 20.0),
  ];

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
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: menuList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      EdgeInsets.only(right: 8, left: index == 0 ? 24.0 : 0.0),
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
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 13.0),
            child: SizedBox(
                height: 400,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: coffeeList.length,
                  itemBuilder: (context, index) {
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
                                Text(coffeeList[index].name,
                                    style:
                                        Theme.of(context).textTheme.headline3),
                                const SizedBox(height: 8.0),
                                Text(
                                    '${coffeeList[index].price.toStringAsFixed(0)} TL',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(color: GreyColors.dark)),
                                Row(
                                  mainAxisAlignment:
                                      addingStatus && selectedIndex == index
                                          ? MainAxisAlignment.spaceBetween
                                          : MainAxisAlignment.end,
                                  children: [
                                    if (addingStatus && selectedIndex == index)
                                      Container(
                                        decoration: BoxDecoration(
                                          color: GreyColors.buttonGrey,
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        child: Row(children: [
                                          TextButton(
                                              style: ButtonStyle(
                                                minimumSize:
                                                    MaterialStateProperty.all(
                                                        Size.zero),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                padding:
                                                    MaterialStateProperty.all(
                                                        const EdgeInsets
                                                                .symmetric(
                                                            vertical: 10,
                                                            horizontal: 12)),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  coffeeCount--;
                                                });
                                              },
                                              child: Image.asset(
                                                  'assets/icons/minus.png')),
                                          Text(
                                            '$coffeeCount',
                                            style: Theme.of(context)
                                                .textTheme
                                                .button,
                                          ),
                                          TextButton(
                                            style: ButtonStyle(
                                              minimumSize:
                                                  MaterialStateProperty.all(
                                                      Size.zero),
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              padding:
                                                  MaterialStateProperty.all(
                                                      const EdgeInsets
                                                              .symmetric(
                                                          vertical: 10,
                                                          horizontal: 12)),
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                coffeeCount++;
                                              });
                                            },
                                            child: Image.asset(
                                                'assets/icons/add_plus.png'),
                                          ),
                                        ]),
                                      ),
                                    if (addingStatus && selectedIndex == index)
                                      Container(
                                        decoration: BoxDecoration(
                                          color: GreyColors.buttonGrey,
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        padding: const EdgeInsets.only(
                                          left: 8.0,
                                          right: 12.0,
                                          top: 4.0,
                                          bottom: 4.0,
                                        ),
                                        child: DropdownButton(
                                            icon: Image.asset(
                                                'assets/icons/dropdown.png'),
                                            dropdownColor:
                                                GreyColors.buttonGrey,
                                            underline: const SizedBox(),
                                            isDense: true,
                                            value: selectedSize,
                                            items: sizes.map((String items) {
                                              return DropdownMenuItem(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 24.0),
                                                  child: Text(
                                                    items,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .button,
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
                                      ),
                                    if (addingStatus && selectedIndex == index)
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all(0),
                                          minimumSize:
                                              MaterialStateProperty.all(
                                            Size.zero,
                                          ),
                                          padding: MaterialStateProperty.all(
                                            const EdgeInsets.all(12.0),
                                          ),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                            PrimaryColors.mainGreen,
                                          ),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            addingStatus = true;
                                            selectedIndex = index;
                                          });
                                        },
                                        child: Image.asset(
                                            'assets/icons/check.png'),
                                      ),
                                    if (selectedIndex != index)
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all(0),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                            PrimaryColors.mainGreen,
                                          ),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            addingStatus = true;
                                            selectedIndex = index;
                                          });
                                        },
                                        child: Text(
                                          'Ekle',
                                          style: Theme.of(context)
                                              .textTheme
                                              .button!
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }
}
