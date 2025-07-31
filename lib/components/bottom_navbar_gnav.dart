import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavbarGNav extends StatelessWidget {
  final void Function(int)? onTabChange;
  const BottomNavbarGNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: GNav(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          haptic: true,
          color: Colors.grey.shade400,
          activeColor: Colors.grey.shade800,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade300,
          tabBorderRadius: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          iconSize: 22,
          gap: 5,
          onTabChange: onTabChange,
          tabs: [
            GButton(icon: FontAwesome.home, text: 'Home'),
            GButton(icon: Icons.admin_panel_settings, text: 'Account'),
          ],
        ),
      ),
    );
  }
}
