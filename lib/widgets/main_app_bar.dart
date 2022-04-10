import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MainAppBar(
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      backgroundColor: Colors.white,
      elevation: 2,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline2,
      ),
      actions: [
        IconButton(
            icon: Image.asset('assets/icons/bell.png'), onPressed: () {}),
        IconButton(
            icon: Image.asset('assets/icons/more_vertical.png'),
            onPressed: () {}),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
