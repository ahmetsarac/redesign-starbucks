import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/main_app_bar.dart';
import '../theme/colors.dart';
import '../widgets/time_picker.dart';
import '../widgets/coffee_menu.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: GreyColors.backgroundGrey,
        appBar: const MainAppBar('Sipariş Yarat'),
        bottomNavigationBar: const BottomNavBar(),
        extendBody: true,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(
                height: 19,
              ),
              TimePicker(),
              SizedBox(height: 7),
              CoffeeMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
