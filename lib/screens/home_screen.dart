import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/campaigns.dart';
import '../widgets/home_main.dart';
import '../widgets/main_app_bar.dart';
import '../theme/colors.dart';

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
      body: Stack(
        children: const [
          HomeMain(),
          Campaigns(),
        ],
      ),
    );
  }
}
