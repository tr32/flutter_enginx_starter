import 'package:flutter/material.dart';

import '../theme/styles.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Settings", style: CustomStyles.appstyle(36, Colors.black, FontWeight.bold)),
      ),
    );
  }
}
