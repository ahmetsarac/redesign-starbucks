import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

import 'screens/item_detail_screen.dart';
import 'screens/login_screen.dart';
import 'screens/order_complete_screen.dart';
import 'screens/order_screen.dart';
import 'screens/order_detail_screen.dart';
import 'screens/splash_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const RedesignStarbucks());
}

class RedesignStarbucks extends StatelessWidget {
  const RedesignStarbucks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: const OrderCompleteScreen(),
    );
  }
}
