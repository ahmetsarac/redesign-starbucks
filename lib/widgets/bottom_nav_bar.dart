import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(40),
        topLeft: Radius.circular(40),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 10,
        currentIndex: _currentIndex,
        onTap: _onTap,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset('assets/icons/star_selected.png'),
            icon: Image.asset('assets/icons/star.png'),
            label: 'Star',
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset('assets/icons/cup_selected.png'),
            icon: Image.asset('assets/icons/cup.png'),
            label: 'Cup',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/card.png'),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/location.png'),
            label: 'Location',
          ),
        ],
      ),
    );
  }

  void _onTap(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
