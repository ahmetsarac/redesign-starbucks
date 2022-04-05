import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/main_app_bar.dart';
import '../theme/colors.dart';
import '../widgets/money_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GreyColors.backgroundGrey,
      appBar: const MainAppBar(),
      bottomNavigationBar: const BottomNavBar(),
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        child: Image.asset('assets/icons/plus.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 31.0, horizontal: 18.0),
        child: Column(
          children: const [
            MoneyCard(),
            SizedBox(height: 27.0),
          ],
        ),
      ),
    );
  }
}
