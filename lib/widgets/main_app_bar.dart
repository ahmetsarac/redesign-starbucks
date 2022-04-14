import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/colors.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? leadingIcon;
  final String title;

  const MainAppBar(
    this.title, {
    this.leadingIcon,
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
      leading: leadingIcon == true
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios_new,
                  color: PrimaryColors.darkGreen),
              onPressed: () {},
            )
          : null,
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
