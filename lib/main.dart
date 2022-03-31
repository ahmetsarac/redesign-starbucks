import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const RedesignStarbucks());
}

class RedesignStarbucks extends StatelessWidget {
  const RedesignStarbucks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      home: const LoginScreen(),
    );
  }
}
