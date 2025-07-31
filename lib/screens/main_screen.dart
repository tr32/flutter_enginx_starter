import 'package:flutter/material.dart';
import 'package:flutter_enginx_starter/screens/account_screen.dart';
import 'package:flutter_enginx_starter/screens/home_screen.dart';
import 'package:flutter_enginx_starter/screens/login_screen.dart';
import 'package:flutter_enginx_starter/screens/registration_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/bottom_navbar_gnav.dart';
import '../provider/main_screen_notifier.dart';

// We use a ConsumerWidget to listen to the notifier.
class MainScreen extends ConsumerWidget {
  final List<Widget> pageList = const [
    HomeScreen(),
    AccountScreen()
  ];

  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // We use ref.watch() to listen to the provider. This will automatically
    // rebuild the widget whenever the pageIndex changes inside the notifier.
    final int pageIndex = ref.watch(mainScreenNotifierProvider).pageIndex;

    // We use ref.read() to get the notifier instance without listening.
    // This is useful for calling methods like the setter.
    final MainScreenNotifier mainScreenNotifier = ref.read(mainScreenNotifierProvider);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: pageList[mainScreenNotifier.pageIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(0.1),
              )
            ]
        ),
        child: BottomNavbarGNav(
          onTabChange: (index) {
            // navigateBottomBar(index);
            mainScreenNotifier.pageIndex = index;
          },
        ),
      ),
    );
  }
}