import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const RedesignStarbucks());
}

class RedesignStarbucks extends StatelessWidget {
  const RedesignStarbucks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
